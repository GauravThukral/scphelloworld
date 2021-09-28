FROM openjdk

ARG version
ENV ver=$version

COPY target/scphelloworld-$ver.war /tmp/scphelloworld-$ver.war
RUN chmod +x /tmp/scphelloworld-$ver.war

VOLUME /tmp
ENTRYPOINT ["sh", "-c", "java -war /tmp/scphelloworld-$ver.war"]
