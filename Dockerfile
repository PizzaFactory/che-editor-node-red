# Dockerimage for Node-RED on Eclipse/Che.
#
# Copyright (C) 2019 Monami-ya LLC, Japan.
# License: MIT.

FROM nodered/node-red-docker:0.20.5-slim-v10

USER root

RUN mkdir -p /home/user && \
    mkdir -p /projects && \
    chown node-red:node-red /projects /home/user

USER node-red

VOLUME [ "/projects" ]

CMD [ "npm", "start", "--", "--userDir", "/projects" ]
