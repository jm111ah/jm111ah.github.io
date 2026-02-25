---
layout: default
title: "소개"
---

<div class="about-page">
  <div class="about-header">
    <h1>{{ site.author.name }}</h1>
    <p class="about-role">{{ site.author.role | default: "개발자" }}</p>
  </div>
  
  <div class="about-content">
    <!-- 자기소개 -->
    <section class="about-section">
      <h2>안녕하세요 👋</h2>
      <div class="about-text">
        {{ site.author.bio | default: "개발과 기술에 관심이 많은 개발자입니다. 지속적인 학습과 성장을 추구하며, 새로운 기술을 배우고 적용하는 것을 즐깁니다." }}
      </div>
    </section>

    <!-- 기술 스택 -->
    {% if site.author.skills %}
    <section class="about-section">
      <h2>기술 스택</h2>
      <div class="skills-grid">
        {% if site.author.skills.frontend %}
        <div class="skill-category">
          <h3>Frontend</h3>
          <div class="tags-list">
            {% for skill in site.author.skills.frontend %}
            <span class="tag">{{ skill }}</span>
            {% endfor %}
          </div>
        </div>
        {% endif %}
        
        {% if site.author.skills.backend %}
        <div class="skill-category">
          <h3>Backend</h3>
          <div class="tags-list">
            {% for skill in site.author.skills.backend %}
            <span class="tag">{{ skill }}</span>
            {% endfor %}
          </div>
        </div>
        {% endif %}
        
        {% if site.author.skills.tools %}
        <div class="skill-category">
          <h3>Tools & Others</h3>
          <div class="tags-list">
            {% for skill in site.author.skills.tools %}
            <span class="tag">{{ skill }}</span>
            {% endfor %}
          </div>
        </div>
        {% endif %}
      </div>
    </section>
    {% endif %}

    <!-- 경력/경험 -->
    {% if site.author.experience %}
    <section class="about-section">
      <h2>경력</h2>
      <div class="experience-list">
        {% for exp in site.author.experience %}
        <div class="experience-item">
          <div class="experience-header">
            <h3>{{ exp.title }}</h3>
            <span class="experience-period">{{ exp.period }}</span>
          </div>
          {% if exp.company %}
          <p class="experience-company">{{ exp.company }}</p>
          {% endif %}
          {% if exp.description %}
          <p class="experience-description">{{ exp.description }}</p>
          {% endif %}
        </div>
        {% endfor %}
      </div>
    </section>
    {% endif %}

    <!-- 관심사 -->
    {% if site.author.interests %}
    <section class="about-section">
      <h2>관심 분야</h2>
      <div class="tags-list">
        {% for interest in site.author.interests %}
        <span class="tag">{{ interest }}</span>
        {% endfor %}
      </div>
    </section>
    {% endif %}

    <!-- 연락처 -->
    <section class="about-section">
      <h2>연락처</h2>
      <div class="contact-links">
        {% if site.author.email %}
        <a href="mailto:{{ site.author.email }}" class="contact-link">
          📧 {{ site.author.email }}
        </a>
        {% endif %}
        {% if site.social.github %}
        <a href="https://github.com/{{ site.social.github }}" target="_blank" rel="noopener" class="contact-link">
          💻 GitHub: @{{ site.social.github }}
        </a>
        {% endif %}
        {% if site.social.linkedin %}
        <a href="https://linkedin.com/in/{{ site.social.linkedin }}" target="_blank" rel="noopener" class="contact-link">
          💼 LinkedIn
        </a>
        {% endif %}
        {% if site.social.twitter %}
        <a href="https://twitter.com/{{ site.social.twitter }}" target="_blank" rel="noopener" class="contact-link">
          🐦 Twitter: @{{ site.social.twitter }}
        </a>
        {% endif %}
      </div>
    </section>
  </div>
</div>

