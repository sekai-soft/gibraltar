FROM alpine:3.22
ARG TARGETARCH

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

ENV SCHEDULE ''

ADD run.sh run.sh
ADD cleanup.sh cleanup.sh

CMD ["sh", "run.sh"]
