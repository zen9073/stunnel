# zen9073/stunnel
FROM zen9073/s6

# 安装 nginx
RUN set -x \
    && apt update \
    && apt install -y --no-install-recommends stunnel4 \
    && apt clean \
    && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
 
COPY etc /etc

ENTRYPOINT ["/init"]
