---
layout: default
title: "소개"
---

<div class="about-page">
  <h1>소개</h1>
  
  <div class="about-content">
    <p>
      안녕하세요! 개발과 기술에 관심이 많은 개발자입니다.
    </p>
    
    <h2>관심 분야</h2>
    <ul>
      <li>웹 개발</li>
      <li>프론트엔드 개발</li>
      <li>백엔드 개발</li>
      <li>새로운 기술 학습</li>
    </ul>
    
    <h2>연락처</h2>
    <p>
      {% if site.author.email %}
      이메일: <a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a><br>
      {% endif %}
      {% if site.social.github %}
      GitHub: <a href="https://github.com/{{ site.social.github }}" target="_blank">@{{ site.social.github }}</a>
      {% endif %}
    </p>
  </div>
</div>

