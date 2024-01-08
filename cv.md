---
layout: page
title: Curriculum Vitae
menu_title: CV
permalink: /cv
redirect_from: /
---
{% assign resume = site.data.resume %}

## Work Experience

<ul class='cv-list'>
{% for work in resume.work %}
<li class='cv-grid'>
  <header class=date>{% include cv-date.html start=work.startDate end=work.endDate %}</header>
  <div class=content>
    <header>
      <h1>{{ work.position }}</h1>
      <h2>{{ work.company }}</h2>
    </header>
    
    {% if work.summary != '' %}
    <p>{{ work.summary }}</p>
    {% endif %}
        
    {% include cv-highlights.html highlights=work.highlights %}
  </div >
</li>
{% endfor %}
</ul>


## Education

<ul class='cv-list'>
  {% for education in resume.education %}
  <li class='cv-grid'>
    <header class=date>{% include cv-date.html start=education.startDate end=education.endDate %}</header>
    <div class=content>
      <header>
        <h1>{{ education.studyType }}</h1>
        <h2>{{ education.institution }}</h2>
      </header>  
      <p>{{ education.area }}</p>

      <p>Courses:</p>
      
      <ul class='skill-list'>
      {% for course in education.courses %}
      <li class='skill'>{{ course }}</li>
      {% endfor %}
      </ul>
    </div>
  </li>
  {% endfor %}
</ul>

## Skills

<ul class='cv-list'>
  {% for skill in resume.skills %}
  <li class='cv-grid'>
    <header class='date'>{{ skill.level }}</header>
    <div class='content'>  
      <header>
        <h1>{{ skill.name }}</h1>
      </header>
      <p>{{ skill.summary }}</p>
            
      {% include cv-highlights.html highlights=skill.keywords %}
      
    </div>  
  </li>
  {% endfor %}  
</ul>

## Languages

<dl class='cv-grid'>

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
