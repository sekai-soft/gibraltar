FROM alpine:3.22
ARG TARGETARCH

ADD src/install.sh install.sh
RUN sh install.sh && rm install.sh

ENV SCHEDULE ''

ADD src/run.sh run.sh
ADD src/cleanup.sh cleanup.sh

CMD ["sh", "run.sh"]
