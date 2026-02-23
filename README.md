Incognito_project

## 🛠️ 설치 및 실행 방법

### 1. 환경 변수 설정
`.env` 파일을 생성하고 아래 내용을 입력하세요.
`GEMINI_API_KEY=your_api_key_here`

### 2. Docker를 이용한 실행
수정 사항을 반영하려면 아래 명령어를 순서대로 실행하세요.
```bash
# 1. 기존 컨테이너 삭제
docker rm -f my-safe-ai

# 2. 이미지 빌드
docker build -t incognito-ai .

# 3. 컨테이너 실행
docker run -d -p 8501:8501 --env-file .env -v "${PWD}:/app" --name my-safe-ai incognito-ai

# 4. 로컬 서버 실행
streamlit run app.py
