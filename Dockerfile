FROM alpine:latest

LABEL Maintainer="Fredy Samuel"

RUN apk add --update --no-cache; \
    apk add --no-cache git jq python3; \
    pip3 install --upgrade pip; \
    apk add --no-cache --virtual .build-deps gcc python3-dev musl-dev alpine-sdk; \
    pip3 install ansible; \
    pip3 install hvac; \
    pip3 install hvac[parser]; \
    pip3 install python-consul; \
    apk del .build-deps
