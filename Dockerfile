FROM eventlog_by_nikhil
MAINTAINER eventlog_by_nikhil:v1

RUN apt-get install -y libtool
#RUN git clone https://github.com/chawlanikhil24/eventlog

RUN chmod 777 -R /eventlog/
WORKDIR /eventlog/
RUN mv /eventlog/configure.in /eventlog/configure.ac
RUN cp /eventlog/Makefile.in /eventlog/src/
RUN cp /eventlog/Makefile.in /eventlog/tests/
RUN cp /eventlog/Makefile.in /eventlog/tgzbuild/
RUN cp /eventlog/Makefile.in /eventlog/tgz2build/
RUN cp /eventlog/Makefile.in /eventlog/winbuild/

RUN sh autogen.sh
RUN sh configure
RUN make
RUN make install




