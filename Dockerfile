FROM python:3.10-slim 

#ENV PIP_DEFAULT_TIMEOUT=100 \
    # allow statements and log messages to immediately appear
    #PYTHONUNBUFFERED=1 \
    # disable a pip version check to reduce run-time and log-spam
    #PIP_DISABLE_PIP_VERSION_CHECK=1 \
    # cache is useless in docker image, so disable to reduce image size
    #PIP_NO_CACHE_DIR=1 \
RUN pip install -U pip
WORKDIR /flaskapp

COPY ["requirements.txt","./"]

RUN pip install -r requirements.txt

COPY ["website", "./website/"]
COPY ["main.py","./"]

ENTRYPOINT ["python","main.py"]
