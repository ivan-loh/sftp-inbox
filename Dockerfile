FROM atmoz/sftp:alpine

RUN apk add --no-cache python3 py3-pip
RUN python3 -m pip install -U watchdog

EXPOSE 22
EXPOSE 8888

ENTRYPOINT ["/entrypoint", "python3", "-m", "http.server", "8888"]
