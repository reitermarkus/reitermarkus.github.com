---
layout: page
title: Project Portfolio
menu_title: Portfolio
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
          {% if project.tags.size > 0 %}
          <ul class='tag-list'>
            {% for tag in project.tags %}
            <li class='tag'>{{ tag }}</li>
            {% endfor %}
          </ul>
          {% endif %}
        </header>
        
        {{ project.excerpt }}
      </section>
    </li>
  {% endfor %}
</ul>
