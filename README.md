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

Copyright (c) 2021 Akogun Oluwatimilehin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
