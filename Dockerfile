FROM dokkupaas/letsencrypt-simp_le:latest
COPY ["./startme.sh", "/usr/local/bin/"]
ENTRYPOINT ["/usr/local/bin/startme.sh"]
