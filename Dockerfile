FROM chryswoods/waldur-mastermind:base

USER root

COPY src /usr/src/waldur/src

RUN mkdir -p /etc/openportal

COPY python_config.toml /etc/openportal/python_config.toml

COPY nginx.conf /etc/nginx/nginx.conf
COPY mastermind.conf /etc/nginx/http.d/mastermind.conf

RUN chown -R waldur:waldur /usr/src/waldur/src/waldur_openportal/migrations
RUN chown -R waldur:waldur /usr/src/waldur/src/waldur_core/structure/migrations

USER waldur

ENV OPENPORTAL_CONFIG=/etc/openportal/python_config.toml

ENTRYPOINT ["/app-entrypoint.sh"]
CMD ["/bin/bash"]
