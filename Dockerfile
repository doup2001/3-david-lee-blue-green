# 베이스 이미지 작성
FROM node:22

# 레포지토리
WORKDIR /app

# 복사
COPY package.json ./

# 패키지 의존성 설치
RUN npm install

# 복사
COPY . .

# 포트
EXPOSE 3000

# 실행
CMD ["node","app.js"]
