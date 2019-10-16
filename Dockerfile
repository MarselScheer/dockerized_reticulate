FROM rocker/verse

RUN apt-get purge -y python \
    && apt-get autoremove -y \
    && apt-get update && apt-get install -y \
       python3 python3-dev python3-pip \
    && pip3 install numpy matplotlib scikit-learn \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && install2.r --error \
       --deps TRUE \
       reticulate \
    && ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

