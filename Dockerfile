# Dockerimage for Node-RED on Eclipse/Che.
#
# Copyright (C) 2019 Monami-ya LLC, Japan.
# License: MIT.

FROM nodered/node-red-docker:0.20.5-slim-v10

USER root

RUN mkdir -p /projects && \
    chgrp node-red:0 /projects && \
    chmod g+rwX /projects

USER node-red

VOLUME [ "/projects" ]

CMD [ "npm", "start", "--", "--userDir", "/projects" ]
