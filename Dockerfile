FROM ubuntu:16.04

MAINTANER yen

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
# COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install flask

COPY . /app

CMD ["python" "/app/blog/blog.py" ]