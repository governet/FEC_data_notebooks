FROM python:3.7.0-stretch

COPY . .

RUN pip install -r ./requirements.txt

EXPOSE 80

CMD ["jupyter notebook"]