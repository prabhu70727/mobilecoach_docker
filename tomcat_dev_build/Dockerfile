FROM tomcat:8

MAINTAINER Prabhakaran Santhanam (psanthan@student.ethz.ch)

RUN mkdir /mc_data

COPY configuration.properties /mc_data

COPY setenv.sh /usr/local/tomcat/bin

COPY MC.war /usr/local/tomcat/webapps

