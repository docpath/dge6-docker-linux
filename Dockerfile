FROM openjdk:8

RUN apt-get update && apt-get install -y apt-utils && apt-get install -y lib32stdc++6 gcc-multilib procps
RUN mkdir /required_files
COPY docgenerationpackv6-6.X.Y-java.jar /required_files/
WORKDIR /required_files
RUN java -jar docgenerationpackv6-6.X.Y-java.jar -solname"DocPath DocGeneration Engine Pack v6" -install -solution"/usr/local/docpath/generation" -silentmode -console -licserverpath"/usr/local/docpath/licenseserver" -licserverport1765
COPY DocPath_License_File.olc /usr/local/docpath/Licenses/
COPY licenseserver.ini /usr/local/docpath/licenseserver/licenseserver/Configuration/
COPY run.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/run.sh
COPY Forms /usr/local/docpath/generation/resources/forms/
COPY Images /usr/local/docpath/generation/resources/images/
WORKDIR /
RUN rm -rf /required_files 
EXPOSE 8084

ENTRYPOINT ["/usr/local/bin/run.sh"]
