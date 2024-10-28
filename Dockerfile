# openjdk:17-slim 베이스 이미지 사용하여 컨테이너 생성
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

# tmp디렉토리를 볼륨으로 설정하여 외부와 공유
VOLUME /tmp

# 빌드시 사용할 변수 정의
ARG JAR_FILE=target/*.jar

# 로컬 시스템의 jar파일을 컨테이너 내로 복사
COPY ${JAR_FILE} app.jar

# 외부 노출할 포트
EXPOSE 8080

# 컨테이너 시작시 기본 명령 설정
ENTRYPOINT ["java","-jar","/app.jar"]