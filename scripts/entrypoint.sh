#!/bin/bash

set -e
python3 /scripts/password_generation.py
/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser --allow-root