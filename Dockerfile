FROM ubuntu:18.04

ADD counter.sh /counter.sh

RUN chmod +x /counter.sh

RUN apt update

RUN apt install -y wget

CMD /counter.sh
