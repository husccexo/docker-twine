FROM python:alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev \
    && pip install --no-cache-dir twine \
    && apk del --no-cache .build-deps

ENTRYPOINT ["twine"]
CMD ["--version"]
