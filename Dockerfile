FROM alpine:3.15

ENV PYTHONUNBUFFERED=1

RUN apk --no-cache --update --upgrade add python2 python2-dev openssl-dev gcc musl-dev libffi-dev && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install pyyaml==5.3 && \
    pip install ansible==2.9.27 && \
    rm -r /root/.cache
