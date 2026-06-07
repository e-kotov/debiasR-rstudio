# Use the rocker/binder image which includes RStudio and geospatial libs
FROM ghcr.io/rocker-org/binder:4.4.2

# Copy repository files to the home directory of the container user
COPY --chown=${NB_USER} . /home/${NB_USER}

# Ensure the start script is executable
RUN chmod +x /home/${NB_USER}/start

# 1. Run the build-time installation of dependencies (from install.R)
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

# 2. Pre-clone debiasR core AND install it from that local source
# This ensures library(debiasR) works immediately upon launch
RUN git clone https://github.com/de-bias/debiasR.git /home/${NB_USER}/debiasR && \
    Rscript -e "pak::local_install('/home/${NB_USER}/debiasR')"

# Set the home directory as the working directory
WORKDIR /home/${NB_USER}

# Set the start script as the ENTRYPOINT
ENTRYPOINT ["./start"]

# Default command
CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--no-browser"]
