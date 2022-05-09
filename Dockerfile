FROM quay.io/git-chglog/git-chglog:0.15.1

RUN apk add --no-cache jq 

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]