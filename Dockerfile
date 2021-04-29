FROM ubuntu:focal

LABEL description="Ubuntu LTS with all development tools needed for the lecture TI-2"
LABEL maintainer="Marian Buschsieweke <marian.buschsieweke@ovgu.de>"

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y  --no-install-recommends \
        install gcc git clang clang-format clangd gdb valgrind nano neovim xxd make strace && \
    useradd -u 1000 -m -U student

WORKDIR /home/student
USER student
