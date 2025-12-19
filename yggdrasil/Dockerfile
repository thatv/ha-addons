ARG BUILD_FROM
FROM $BUILD_FROM

LABEL That Vasket <thatv+codeforge@dismail.de>

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV LANG=C.UTF-8

#Installl yggdrasil 
RUN apk update && apk add --no-cache --no-scripts bash yggdrasil && rm -rf /var/cache/apk/*

COPY run.sh /
RUN chmod a+x / run.sh

CMD [ "/run.sh" ]
