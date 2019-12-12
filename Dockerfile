FROM akilli/base

LABEL maintainer="Ayhan Akilli"

ENV PGDATA=/data
ENV PGPASS=app

RUN apk add --no-cache \
        postgresql \
        postgresql-contrib && \
    mkdir -p \
        /init/postgres \
        /run/postgresql && \
    chown -R app:app /run/postgresql && \
    rm -rf /var/lib/postgresql

COPY rootfs/ /
