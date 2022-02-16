FROM python:3.9.5-alpine

#setup environment variables
ENV PORT=8080 \
    HOST=0.0.0.0 \
    FLASK_APP=app/run.py \
    PYTHONUNBUFFERED=Trye
ARG FLASK_DEVYG=False
ENV FLASK_DEBUG=$FLASK_DEBUG

#setyo file systEM
WORKDIR /aoo
COPY app/ /app

#upgrade pip & install python packages
RUN pip install --upgrade pip --requirement
