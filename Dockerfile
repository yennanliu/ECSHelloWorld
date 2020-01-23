FROM conda/miniconda3

MAINTAINER yen

RUN apt-get update \ 
	&& conda install flask -y \
    && pip freeze list 

COPY . /src

EXPOSE 8081

CMD cd /src && python blog.py