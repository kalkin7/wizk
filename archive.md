---
layout: default
title: Archive
permalink: /archive/
---


<h1>전체글목록</h1>

<div class="archive-page">
    <!-- from http://www.mitsake.net/2012/04/archives-in-jekyll/ -->

    {% for post in site.posts %}
        {% capture month %}{{ post.date | date: '%m%Y' }}{% endcapture %}
        {% capture nmonth %}{{ post.next.date | date: '%m%Y' }}{% endcapture %}
            {% if month != nmonth %}
                {% if forloop.index != 1 %}</ul>{% endif %}
                <h3>{{ post.date | date: '%Y년 %m월' }}</h3><ul>
            {% endif %}
        <li> <a href="{{ post.url }}">{{ post.title }}</a>  <span class="date">{{ post.date | date: "%y%m%d" }}</span></li>

    {% endfor %}
