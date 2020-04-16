# 基础镜像
FROM openjdk:11-jre-slim
# 对应pom.xml文件中的dockerfile-maven-plugin插件buildArgs配置项JAR_FILE的值
ARG JAR_FILE
# 复制打包完成后的jar文件到/opt目录下
COPY ${JAR_FILE} app.jar
# 启动容器时执行
ENTRYPOINT ["java", "-jar","app.jar"]
# 使用端口80
EXPOSE 80