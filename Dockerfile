FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssl3 openssh"]

RUN ["/bin/sh", "-c", "wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/v4.25.3/yq_linux_amd64  && chmod a+x /usr/local/bin/yq"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
