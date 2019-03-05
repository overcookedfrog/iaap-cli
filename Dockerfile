FROM debian:9.7-slim
RUN apt-get update && apt-get install -y libicu57 wget unzip
RUN set -ex \
    && wget ftp://webdata2:webdata2@ussd-ftp.illumina.com/downloads/software/iaap/iaap-cli-linux-x64-1.0.0.zip \
    && unzip iaap-cli-linux-x64-1.0.0.zip \
    && mv iaap-cli /usr/local/bin/iaap-cli \
    && rm iaap-cli-linux-x64-1.0.0.zip licenses.txt README.md
