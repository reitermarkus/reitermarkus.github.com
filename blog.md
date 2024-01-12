---
layout: page
title: Blog
permalink: /blog
---
<ul class=timeline>
  {% for post in site.posts %}
    <li class='timeline-item'>
      <header class='date'>
        <span>{{ post.date | date: "%b&nbsp;%-d,&nbsp;%Y" }}</span>  
      </header>

      <section class=content>
        <h1><a href="{{ post.url | prepend: site.baseurl | remove: '.html' }}">{{ post.title }}</a></h1>

        {{ post.excerpt }}

      </section>  
    </li>
  {% endfor %}
</ul>

<p class="rss-subscribe">{% include rss-icon.svg %} Subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a>.</p>
