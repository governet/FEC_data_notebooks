#!/bin/bash
source ./FEC_data_notebook_virtualenv/bin/activate && export FEC_data_path=$(pwd)/data && cd ./src && jupyter notebook

