FROM python:3.7.0-stretch

COPY . .

RUN pip install -r ./requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook"]