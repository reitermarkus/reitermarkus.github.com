---
layout: page
title: Curriculum Vitae
menu_title: CV
permalink: /cv
pdf_url: /cv.pdf
---
{% assign resume = site.data.resume %}

## Work Experience

<ul class='timeline'>
  {% for work in resume.work %}
  <li class='timeline-item'>
    <header class=date>{% include cv-date.html start=work.startDate end=work.endDate %}</header>
    <div class=content>
      <header>
        <h1>{{ work.position }}</h1>
        <h2>{{ work.company }}</h2>
      </header>
      
      {% if work.summary != '' %}
      <p>{{ work.summary }}</p>
      {% endif %}
          
      {% include tag-list.html tags=work.highlights %}
    </div >
  </li>
  {% endfor %}
</ul>

## Education

<ul class='timeline'>
  {% for education in resume.education %}
  <li class='timeline-item'>
    <header class=date>{% include cv-date.html start=education.startDate end=education.endDate %}</header>
    <div class=content>
      <header>
        <h1>{{ education.studyType }}</h1>
        <h2>{{ education.institution }}</h2>
      </header>  
      <p>{{ education.area }}</p>
      
      {% include tag-list.html label='Courses' tags=education.courses %}  
    </div>
  </li>
  {% endfor %}
</ul>

## Skills

<ul class='timeline'>
  {% for skill in resume.skills %}
  <li class='timeline-item'>
    <header class='date'>{{ skill.level }}</header>
    <div class='content'>  
      <header>
        <h1>{{ skill.name }}</h1>
      </header>  
      {% include tag-list.html label='Highlights' tags=skill.keywords %}  
    </div>  
  </li>
  {% endfor %}  
</ul>

## Languages

<dl class='timeline-item'>

{% for language in resume.languages %}

<dt class=date>{{ language.fluency }}</dt>
<dd class=content>  
  <h1>{{ language.language }}</h1>
  
  {% if language.summary %}
  
  <p>{{ language.summary }}</p>
  
  {% endif %}
</dd>


{% endfor %}

</dl>
