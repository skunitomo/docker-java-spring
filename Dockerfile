# 1.jarファイルの生成
FROM maven:3.6.3-jdk-14 as builder

RUN mkdir -p /opt/java/src
WORKDIR /opt/java/src
COPY ./pom.xml ./
COPY ./src ./src

# mvn install によりtargetディレクトリにjarが生成される
RUN mvn install
RUN ls ./target -al

# 2. 
FROM openjdk:14-jdk-alpine

RUN mkdir -p /opt/app/
WORKDIR /opt/app

# builderコンテナの中にあるjarファイルを /opt/app/ にコピー
COPY --from=builder /opt/java/src/target/spring-boot-0.0.1.jar /opt/app/

# 8080ポートを開ける
EXPOSE 8080

# アプリを実行
CMD  ["java","-jar","/opt/app/spring-boot-0.0.1.jar"]
