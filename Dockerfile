# 1.jarファイルの生成
FROM maven:3.6.3-jdk-14 as builder

RUN mkdir -p /opt/java/src
WORKDIR /opt/java/src
COPY pom.xml ./
COPY src ./src

COPY ./ /opt/java/

# mvn install によりtargetディレクトリにjarが生成される
RUN cd /opt/java && mvn install