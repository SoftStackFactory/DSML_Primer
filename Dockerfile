# Base image w/ Python and Anaconda
FROM continuumio/anaconda3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Update packages
RUN apt-get update  
RUN apt-get install -y \
    # python3-pip \
    python3-setuptools python3-wheel \
    python-numpy python-scipy \
    libxml2-dev libxslt-dev python-dev \
    python3-pyqt5

RUN conda update python
RUN conda install -c r rstudio --yes

# Make port 8080 and 8888 available outside this container
EXPOSE 8080 8888