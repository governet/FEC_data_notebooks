#!/usr/bin/env bash

# Create the basic virtualenv
virtualenv FEC_data_notebook

# Load basic data from FEC server; you'll need to get more on your own as needed
mkdir ./data
mkdir ./data/2016
wget -O ./data/2016/independent_expenditure_2016.csv https://cg-519a459a-0ea3-42c2-b7bc-fa1143481f74.s3-us-gov-west-1.amazonaws.com/bulk-downloads/2016/independent_expenditure_2016.csv

# Activate the virtual env, install dependencies, and start the notebook
source ./FEC_data_notebook/bin/activate && pip install -r ./requirements.txt && cd ./src && jupyter notebook
