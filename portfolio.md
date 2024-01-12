---
layout: page
title: Portfolio
permalink: /portfolio
---
<ul class="timeline">
  {% for project in site.projects reversed %}
    <li class='timeline-item'>
      <header class='date'>
        <span>{{ project.year }}</span>  
      </header>

      <section class=content>
        <header>
          <h1><a href="{{ project.external_url }}">{{ project.title }}  {% include arrow.svg %}</a></h1>
          <h2>{{ project.type }}</h2>
        </header>
        
        {{ project.excerpt }}
        
        {% if project.tags.size > 0 %}
        <ul class='tag-list'>
          {% for tag in project.tags %}
          <li class='tag'>{{ tag }}</li>
          {% endfor %}
        </ul>
        {% endif %}
      </section>
    </li>
  {% endfor %}
</ul>
