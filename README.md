# Jupyter Conda on Docker Compose 

## Getting started

To start project:
 - Create a .env file in the project root directory
 - Set JUPYTER_PASSWORD as an environment variable in the .env
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

## To tear down the project containers:

    - Run: 
        ```bash
        docker-compose down
        ```
