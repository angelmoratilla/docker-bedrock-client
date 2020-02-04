FROM angelmoratilla/base
MAINTAINER Angel Moratilla <angelmoratilla@gmail.com>
#INstall mcpelauncher
RUN dpkg --add-architecture i386
RUN buildDeps='software-properties-common'; \
    set -x && \
    apt-get update && apt-get install -y $buildDeps --no-install-recommends;
RUN apt-get -y install gpg-agent
RUN apt-get install -y wget
RUN wget -O - https://mcpelauncher.mrarm.io/apt/conf/public.gpg.key | apt-key add -
RUN add-apt-repository 'deb http://mcpelauncher.mrarm.io/apt/ubuntu/ bionic main'
RUN apt-get update; apt-get install -y msa-daemon msa-ui-qt mcpelauncher-client mcpelauncher-ui-qt
#Install 32-bit drivers
RUN apt install -y libegl1-mesa-dev:i386
#Install audio patches
RUN apt install -y libasound2:i386 libpulse0:i386
