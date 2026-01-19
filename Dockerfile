# Dockerfile
FROM node:20-alpine AS builder

WORKDIR /app

# 의존성 설치를 위해 패키지 파일 복사
COPY package.json package-lock.json ./
RUN npm ci

# 소스 코드 복사 및 빌드
COPY . .
RUN npm run build

# -----------------------------------------------
# 실행 스테이지 (가벼운 이미지)
FROM node:20-alpine

WORKDIR /app

# 빌드된 결과물과 필요한 파일만 복사
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package.json ./
COPY --from=builder /app/node_modules ./node_modules

# mcp-hub를 전역 명령어로 링크 (bin 설정 활용)
RUN npm install -g .

# 설정 파일을 저장할 볼륨 디렉터리 생성
RUN mkdir -p /app/config

# 포트 노출 (기본 3000)
EXPOSE 3000

# 실행 명령
# --config 옵션으로 컨테이너 내부 경로의 설정 파일을 지정
CMD ["mcp-hub", "--port", "3000", "--config", "/app/config/mcp-servers.json"]