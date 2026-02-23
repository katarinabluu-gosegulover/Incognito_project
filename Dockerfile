# 1. 파이썬 이미지 사용
FROM python:3.11-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 필수 라이브러리 목록 복사 및 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. 소스 코드 및 설정 파일 전체 복사
COPY . .

# 5. 포트 개방
EXPOSE 8501

# 6. 실행 명령어
CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]