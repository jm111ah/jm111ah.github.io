#!/bin/bash
# Git 저장소 연결 스크립트

cd /d/Memory/Git/Blog

# Git 저장소 초기화
git init

# 원격 저장소 추가
git remote add origin https://github.com/jm111ah/jm111ah.github.io.git

# 원격 저장소 정보 확인
git remote -v

# 원격 저장소에서 가져오기
git fetch origin

# main 브랜치로 설정
git branch -M main

# 원격 저장소와 병합 (로컬에 파일이 없을 경우)
git pull origin main --allow-unrelated-histories

echo "Git 저장소 연결이 완료되었습니다!"
echo "현재 원격 저장소:"
git remote -v

