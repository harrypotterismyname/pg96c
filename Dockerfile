FROM postgres
#RUN mkdir /mnt/ramdisk
#RUN mount -t ramfs -o size=4M,maxsize=4M /dev/ram0 /mnt/ramdisk  sudo
#mount -t ramfs -o size=4M,maxsize=4M /dev/ram0 /mnt/ramdisk 
 psql -c "show data_directory;"

ENV PGDATA /dev/shm/pgdata/data
#ENV PGDATA /mnt/ramdisk/pgdata/data

COPY *.sql /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*
RUN psql -c "show data_directory;"
