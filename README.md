# 기술 블로그

개발과 기술에 대한 생각을 기록하는 공간입니다.

## 🚀 시작하기

이 블로그는 Jekyll과 GitHub Pages를 사용하여 구축되었습니다.

### 로컬에서 실행하기

1. **Ruby 설치** (Jekyll 실행에 필요)
   - [Ruby 설치 가이드](https://www.ruby-lang.org/ko/documentation/installation/)

2. **의존성 설치**
   ```bash
   bundle install
   ```

3. **로컬 서버 실행**
   ```bash
   bundle exec jekyll serve
   ```
   
   브라우저에서 `http://localhost:4000`으로 접속하세요.

## 📝 포스트 작성하기

새로운 포스트를 작성하려면 `_posts` 폴더에 마크다운 파일을 추가하세요.

파일명 형식: `YYYY-MM-DD-제목.md`

예시:
```markdown
---
layout: post
title: "포스트 제목"
date: 2024-01-01 12:00:00 +0900
categories: [카테고리]
tags: [태그1, 태그2]
---

포스트 내용을 여기에 작성하세요.
```

## 🎨 커스터마이징

- **설정 변경**: `_config.yml` 파일 수정
- **스타일 변경**: `assets/css/main.css` 파일 수정
- **레이아웃 변경**: `_layouts/` 폴더의 파일 수정

## 📦 배포

GitHub에 푸시하면 자동으로 GitHub Pages에 배포됩니다.

1. 변경사항 커밋
   ```bash
   git add .
   git commit -m "포스트 추가"
   ```

2. GitHub에 푸시
   ```bash
   git push origin main
   ```

## 📚 참고 자료

- [Jekyll 공식 문서](https://jekyllrb.com/docs/)
- [GitHub Pages 가이드](https://docs.github.com/en/pages)
- [Markdown 가이드](https://www.markdownguide.org/)

## 📄 라이선스

이 블로그의 내용은 자유롭게 사용하실 수 있습니다.

