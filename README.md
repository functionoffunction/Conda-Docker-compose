# Jupyter Conda on Docker Compose 

## Getting started

To start project:
 -  Clone the project
    ```bash
        git clone https://github.com/functionoffunction/Conda-Docker-compose
    ```
 - Change directory  to the project directory
    ```bash
        cd Conda-Docker-compose
    ```
 - Create a ```.env``` file in the project root directory
 - Set JUPYTER_PASSWORD as an environment variable in the ```.env```
    ```bash
        JUPYTER_PASSWORD=my_password
    ```
  - Run:
    ```bash
        docker-compose up
    ```
  - The application would be available at http://localhost/

## To install new tools
 
 - Add the package name to ```requirement.txt``` file
 - Run:
    ```bash
        docker-compose up --build
    ```

## To tear down the project container:
 - Run:
    ```bash
        docker-compose down
    ```
