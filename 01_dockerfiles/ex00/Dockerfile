# From an alpine image you’ll add to your container your favorite text editor,
# vim or emacs, that will launch along with your container.

FROM alpine

RUN apk update && apk add vim

ENTRYPOINT [ "vim" ]

# BUILD -> cd 01_dockerfiles/ex00 && docker build -t ex00 . 
# RUN -> docker run -it --rm ex00