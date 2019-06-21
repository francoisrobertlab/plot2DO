# Requirements for plot2DO
FROM bioconductor/release_core2:R3.6.0_Bioc3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install plot2DO additional requirements
RUN Rscript plot2DO_setup.R

# Run application.
ENTRYPOINT ["Rscript", "plot2DO.R"]
