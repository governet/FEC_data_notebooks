#!/env/bin bash
virtualenv FEC_data_notebook

source ./FEC_data_notebook/bin/activate && pip install -r ./requirements.txt && cd ./src && jupyter notebook