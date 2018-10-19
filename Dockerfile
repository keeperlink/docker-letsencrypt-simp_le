FROM dokku/letsencrypt:latest
COPY ["./startme.sh", "/usr/local/bin/"]
ENTRYPOINT ["/usr/local/bin/startme.sh"]
