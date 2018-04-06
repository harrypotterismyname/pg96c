FROM postgres
#ENV PGDATA /dev/shm/pgdata/data
ENV PGDATA /mnt/tmpfs/pgdata/data

COPY *.sql /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*
