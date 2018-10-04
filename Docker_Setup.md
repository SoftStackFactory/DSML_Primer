# Enviroment Setup

## Build Docker Image

Open up the terminal and from the root directory execute:

    docker build -t devpass .

## To create your Docker container execute the following command:

    docker run -p 8080:8080 --rm -v ${PWD}:/app --name devpass -it devpass

## To stop Docker container:

    exit

## To run Docker container:

    docker start -i devpass

## Launch Jupyter Notebook from Docker Container Terminal

    jupyter notebook --ip 0.0.0.0 --port 8080 --allow-root

## Orange

    docker pull acopar/orange-docker
    docker run -p 127.0.0.1:5901:5901 -p 127.0.0.1:6901:6901 --rm -v ${PWD}:/app -it acopar/orange-docker
