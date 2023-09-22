FROM python:3.11-bookworm

# Upgrading the install
USER root
RUN apt update -y
RUN apt upgrade -y

# Adapting the container
## Creating the user
RUN useradd -m runninguser

## Installing GCC
RUN apt install -y build-essential

# Preparing the home directory to build the server
USER runninguser
WORKDIR /home/runninguser

RUN mkdir models
RUN mkdir config
WORKDIR /home/runninguser/config
RUN echo "SOME_TOKEN" > tokens.txt

COPY . /home/runninguser/

ENTRYPOINT ["../run.sh"]

