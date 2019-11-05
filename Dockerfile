FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /my_app_dir
WORKDIR /my_app_dir
ADD requirements.txt .
RUN pip install  --upgrade pip && pip install -r requirements.txt
RUN ls
ADD app ./app
WORKDIR /my_app_dir/app
# RUN python3 manage.py migrate