FROM public.ecr.aws/docker/library/python:slim-buster
COPY requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . ./
CMD gunicorn --bind 0.0.0.0:8080 app:server