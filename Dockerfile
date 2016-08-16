## BUILDING
##   (from project root directory)
##   $ docker build -t dadding-awesomemenu .
##
## RUNNING
##   $ docker run dadding-awesomemenu

FROM gcr.io/stacksmith-images/debian:wheezy-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="1fzbwr1" \
    STACKSMITH_STACK_NAME="dadding/AwesomeMenu" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install java-1.8.0_101-0 --checksum 66b64f987634e1348141e0feac5581b14e63064ed7abbaf7ba5646e1908219f9

ENV PATH=/opt/bitnami/java/bin:$PATH \
    JAVA_HOME=/opt/bitnami/java

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Java base template
COPY . /app
WORKDIR /app
