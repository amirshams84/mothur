FROM amirshams/centos7
MAINTAINER Amir Shams <amir.shams84@gmail.com>

##############################################################
# Software:             mothur
# Software Version:     1.38.0
# Software Website:     www.mothur.org
# Description:          16S analyser
##############################################################

RUN wget https://github.com/mothur/mothur/releases/download/v1.38.1/Mothur.linux_64.zip && \
    unzip Mothur.linux_64.zip && \
    rm Mothur.linux_64.zip && \
    rm -rf __MACOSX

#adds executables to the path
ENV PATH /mothur:$PATH
