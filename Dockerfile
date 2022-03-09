FROM atmoz/sftp:alpine

RUN apk add --no-cache python3

EXPOSE 22
EXPOSE 8888

ENTRYPOINT ["/entrypoint", "python3", "-m", "http.server", "8888"]
