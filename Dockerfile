FROM alpine:latest
WORKDIR /usr/local/bin

RUN touch /README.md
RUN echo "je peux m'incrire dans le volume à chaque : docker compose up --build" > /README.md

CMD [ "cp", "/README.md", "/usr/local/bin" ]


