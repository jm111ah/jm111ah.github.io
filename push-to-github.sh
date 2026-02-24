#!/bin/bash
# GitHub에 블로그 파일 푸시 스크립트

cd /d/Memory/Git/Blog

echo "=== Git 저장소 상태 확인 ==="
git status

echo ""
echo "=== Git 저장소 초기화 (필요한 경우) ==="
if [ ! -d ".git" ]; then
    echo "Git 저장소를 초기화합니다..."
    git init
    git remote add origin https://github.com/jm111ah/jm111ah.github.io.git
fi

echo ""
echo "=== 원격 저장소 확인 ==="
git remote -v

echo ""
echo "=== 모든 파일 추가 ==="
git add .

echo ""
echo "=== 커밋 ==="
git commit -m "Initial blog setup with Jekyll" || git commit -m "Update blog files"

echo ""
echo "=== 브랜치를 main으로 설정 ==="
git branch -M main

echo ""
echo "=== GitHub에 푸시 ==="
echo "주의: GitHub 인증이 필요할 수 있습니다."
echo "만약 인증 오류가 발생하면 GitHub Personal Access Token을 사용하세요."
echo ""
git push -u origin main

echo ""
echo "=== 완료! ==="
echo "GitHub 저장소를 확인하세요: https://github.com/jm111ah/jm111ah.github.io"
echo "블로그 주소: https://jm111ah.github.io (몇 분 후 활성화됩니다)"

