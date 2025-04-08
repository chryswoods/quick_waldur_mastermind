FROM chryswoods/opennode/waldur-mastermind:base

COPY src /usr/src/waldur/src

RUN mkdir -p /etc/openportal

COPY python_config.toml /etc/openportal/python_config.toml

COPY nginx.conf /etc/nginx/nginx.conf
COPY mastermind.conf /etc/nginx/http.d/mastermind.conf

ENV OPENPORTAL_CONFIG=/etc/openportal/python_config.toml

ENTRYPOINT ["/app-entrypoint.sh"]
CMD ["/bin/bash"]
