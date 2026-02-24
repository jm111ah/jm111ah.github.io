# GitHub에 푸시하기 가이드

## 방법 1: Git Bash 스크립트 사용 (가장 쉬움)

1. **Git Bash**를 엽니다
2. 다음 명령어를 실행합니다:

```bash
cd /d/Memory/Git/Blog
bash push-to-github.sh
```

## 방법 2: 수동으로 명령어 실행

Git Bash에서 다음 명령어를 순서대로 실행하세요:

```bash
cd /d/Memory/Git/Blog

# Git 저장소 초기화 (처음 한 번만)
git init
git remote add origin https://github.com/jm111ah/jm111ah.github.io.git

# 모든 파일 추가
git add .

# 커밋
git commit -m "Initial blog setup"

# 브랜치를 main으로 설정
git branch -M main

# GitHub에 푸시
git push -u origin main
```

## 인증 문제 해결

### Personal Access Token 사용 (권장)

1. GitHub에서 Personal Access Token 생성:
   - GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
   - "Generate new token" 클릭
   - `repo` 권한 선택
   - 토큰 생성 후 복사

2. 푸시할 때 토큰 사용:
   ```bash
   git push -u origin main
   # Username: jm111ah
   # Password: (여기에 Personal Access Token 붙여넣기)
   ```

### 또는 SSH 키 사용

1. SSH 키 생성:
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

2. 공개 키를 GitHub에 추가:
   - `~/.ssh/id_ed25519.pub` 파일 내용 복사
   - GitHub → Settings → SSH and GPG keys → New SSH key

3. 원격 저장소 URL 변경:
   ```bash
   git remote set-url origin git@github.com:jm111ah/jm111ah.github.io.git
   git push -u origin main
   ```

## GitHub Pages 설정

푸시 후:

1. GitHub 저장소 페이지로 이동: https://github.com/jm111ah/jm111ah.github.io
2. **Settings** → **Pages** 메뉴로 이동
3. **Source**를 **"GitHub Actions"**로 설정
4. 저장 후 몇 분 기다리면 `https://jm111ah.github.io`에서 블로그 확인 가능

## 문제 해결

### "fatal: not a git repository" 오류
```bash
git init
```

### "remote origin already exists" 오류
```bash
git remote remove origin
git remote add origin https://github.com/jm111ah/jm111ah.github.io.git
```

### "failed to push some refs" 오류
원격 저장소에 이미 파일이 있는 경우:
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

