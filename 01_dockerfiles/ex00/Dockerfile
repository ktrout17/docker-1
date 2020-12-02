# From an alpine image you’ll add to your container your favorite text editor,
# vim or emacs, that will launch along with your container.

FROM alpine

RUN apk update && apk add vim

ENTRYPOINT [ "vim" ]

# BUILD -> docker build - < 01_dockerfiles/ex00/Dockerfile 
# GET IMAGE ID -> docker image ls
# RUN -> docker run -it --rm <image-id>