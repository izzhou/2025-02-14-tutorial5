FROM --platform linux/amd64 rocker/rstudio:4.2.2

# First, we copy our script into the container
# This is similar to how they copied renv.lock in the first example
COPY list.sh /home/rstudio/list.sh

# Run the script as part of the container setup
# This is similar to how they run scripts in the second and third examples
RUN /home/rstudio/list.sh