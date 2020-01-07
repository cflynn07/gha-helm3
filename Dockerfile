FROM alpine:3.10.2

ENV BASE_URL="https://get.helm.sh"
ENV HELM_3_FILE="helm-v3.0.0-linux-amd64.tar.gz"

RUN apk add --no-cache ca-certificates curl bash && \
    curl -L ${BASE_URL}/${HELM_3_FILE} | tar xvz && \
    mv linux-amd64/helm /usr/bin/helm3 && \
    chmod +x /usr/bin/helm3 && \
    rm -rf linux-amd64

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
