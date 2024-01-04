FROM debian:sid-slim
WORKDIR /usr/local/bin
#COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

RUN touch /README.md
RUN echo "je peux m'incrire dans le volume à chaque : docker compose up --build" > /README.md
# how to take a file to the local machine
# docker cp <containerId>:/file/path/within/container /host/path/target
# the the container id

CMD [ "cp", "/README.md", "/usr/local/bin" ]
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]