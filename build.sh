#!/bin/bash
install_path=$1
src_path=$(pwd)
app_path=$install_path/FEC_data_notebook

# Create the basic virtualenv
cd $install_path && virtualenv FEC_data_notebook
cp -r $src_path/src $app_path
cp $src_path/requirements.txt $app_path
cp $src_path/start.sh $app_path
mkdir $app_path/data
mkdir $app_path/data/2016

# Download the 2016 sample data to the data path
wget -O $app_path/data/2016/independent_expenditure_2016.csv https://cg-519a459a-0ea3-42c2-b7bc-fa1143481f74.s3-us-gov-west-1.amazonaws.com/bulk-downloads/2016/independent_expenditure_2016.csv

# Activate the virtual env, install dependencies, and start the notebook
source $app_path/bin/activate && pip install -r $app_path/requirements.txt && export FEC_data_path=$app_path/data && cd $app_path/src && jupyter notebook
