FROM postgres
ENV PGDATA /dev/shm/pgdata/data
COPY *.sql /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*
