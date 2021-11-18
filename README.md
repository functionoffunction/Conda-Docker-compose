# Jupyter Conda on Docker Compose 

## Project description

Jupyter Conda on Docker Compose provides Conda environment and package access extension from within Jupyter Notebook and JupyterLab.

## Requirements

- docker (20.10.5+): To install docker visit https://docs.docker.com/get-docker/
- docker-compose (1.25.5+): To install docker-compose visit https://docs.docker.com/compose/install/

## Getting started

**To start project:**
 - install docker
 - install docker-compose
 - Clone the project
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

**To install new tools:**
 
 - Add the package name to ```requirement.txt``` file
 - Run:
    ```bash
    docker-compose up --build
    ```

**To tear down the project container:**
 - Run:
    ```bash
    docker-compose down
    ```

## License

MIT License
