#!/env/bin bash
virtualenv FEC_data_notebook

cd ./FEC_data_notebook

git clone https://github.com/governet/FEC_data_notebooks.git

source ./venv/bin/activate

pip install -r ./FEC_data_notebooks/requirements.txt

cd ./FEC_data_notebooks/src && jupyter notebook