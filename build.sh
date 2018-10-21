#!/bin/bash
# Create the basic virtualenv
virtualenv FEC_data_notebook_virtualenv
mkdir ./data
mkdir ./data/2016

# Download the 2016 sample data to the data path
wget -O ./data/2016/independent_expenditure_2016.csv https://cg-519a459a-0ea3-42c2-b7bc-fa1143481f74.s3-us-gov-west-1.amazonaws.com/bulk-downloads/2016/independent_expenditure_2016.csv

# Activate the virtual env, install dependencies, and start the notebook
source ./FEC_data_notebook_virtualenv/bin/activate && pip install -r ./requirements.txt && export FEC_data_path=$(pwd)/data && cd ./src && jupyter notebook
