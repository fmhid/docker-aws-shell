FROM python:alpine

LABEL Maintainer="Ernesto Pérez <ernesto.perez@euigs.com && Francisco Moncayo <francisco.moncayo@euigs.com>" \
      Name="Docker AWS-Shell" \
      Description="Docker image for aws-shell CLI tool" \
      Version="0.1.2"

RUN set -x \
    && apk add --upgrade \
    less \
    groff

RUN set -x \
    && pip install --upgrade \
    boto3 \
    aws-shell

COPY rootfs/ /

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["aws-shell"]
