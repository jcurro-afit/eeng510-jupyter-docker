# Run Jupyter Notebooks

## Install dependencies
Install [docker](https://docs.docker.com/install/) 


Install [docker-compose](https://docs.docker.com/compose/install/)

## Change file
First modify the `docker-compose.yml` so that the last line in volume points to where you stored your jupyter notebooks. The default is the folder above where the `docker-compose.yml` file is located. 

## Run Jupyter
Open a terminal and change your directory to where the root of where this file is. Run the command `docker-compose up`. This will build and run the Jupyter notebooks in a container. The terminal will print the URL you need to go to to access the Jupyter notebooks. The URL must have `127.0.0.1` in it. Paste that URL into a web browser and now you have working Jupyter Notebooks server in a web browser running from a container. 
