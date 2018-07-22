FROM alpine:latest

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

# VOLUME /git
# WORKDIR /git

# COPY ./docker-compose-application /app

WORKDIR app

RUN ls

RUN git clone https://github.com/dprasanthv/docker-compose-application.git

WORKDIR app/docker-compose-application

COPY ./docker-compose-application app/docker-compose-application


WORKDIR app/docker-compose-application

RUN git status

RUN git add .

RUN git commit -m "Initial Commit #2"

RUN git push origin master


