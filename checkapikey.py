import os
from dotenv import load_dotenv

# 파일 경로가 정확해야 합니다. .env와 이 py파일은 같은 폴더에 있어야 함.
load_dotenv()

key = os.getenv("GEMINI_API_KEY")

if key and key.startswith("AIza"):
    print("✅ 성공: 키를 정상적으로 불러왔습니다.")
else:
    print("❌ 실패: .env 파일 내용이나 위치를 확인하세요.")
    print(f"현재 인식된 값: {key}")