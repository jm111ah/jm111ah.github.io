# Git 저장소 연결 가이드

이 디렉토리를 GitHub 저장소 `https://github.com/jm111ah/jm111ah.github.io.git`와 연결하는 방법입니다.

## 방법 1: Git Bash 스크립트 사용 (권장)

1. **Git Bash**를 엽니다.
2. 다음 명령어를 실행합니다:

```bash
cd /d/Memory/Git/Blog
bash setup-git.sh
```

## 방법 2: 수동으로 명령어 실행

Git Bash에서 다음 명령어를 순서대로 실행하세요:

```bash
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

# 원격 저장소와 병합
git pull origin main --allow-unrelated-histories
```

## 방법 3: 저장소 클론 (디렉토리가 비어있는 경우)

만약 현재 디렉토리가 비어있고 처음부터 시작한다면:

```bash
cd /d/Memory/Git
git clone https://github.com/jm111ah/jm111ah.github.io.git Blog
```

## 연결 확인

연결이 완료된 후 다음 명령어로 확인할 수 있습니다:

```bash
git remote -v
git status
```

## Git이 설치되어 있지 않은 경우

Git이 설치되어 있지 않다면:
1. [Git for Windows 다운로드](https://git-scm.com/download/win)
2. 설치 시 "Add Git to PATH" 옵션 선택
3. 설치 완료 후 Git Bash 실행

