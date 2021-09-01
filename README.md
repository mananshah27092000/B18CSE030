## Process Followed

1. I created a simple web server with node.js, which is set to run on port 8080.

2. I created a Dockerfile, which performs the following:
    * Specifies the base image as `ubuntu`, which is the official base image for Ubuntu 20.04.
    * Installs the `curl` package using `apt-get`.
    * Downloads the setup script for node.js 14.x using `curl` and executes it using `bash`.
    * Installs node.js using `apt-get`.
    * Creates the `/app` directory.
    * Copies the `server.js` file from the host system to the `/app` directory in the image.
    * Exposes the port 8080 in the container to the host.
    * Starts the server by executing `node server.js`.

3. The docker image is built from the Dockerfile using the following command: \
`docker built . -t b18cse030/assignment1`

4. The docker image is instantiated to create a container, with port 8080 of the host forwarded to port 8080 of the container: \
`docker run -p 8080:8080 -d b18cse030/assignment1`

5. Now, open a web browser in the host and navigate to http://localhost:8080 to access the web app.

## Features

 * One can add string to the list using http://localhost:8080/?add=stringToAdd in the browser and check the list getting updated
 
 * One can check the list of strings using http://localhost:8080
 
