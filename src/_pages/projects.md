---
layout: page
title: Projects
category:
  - top_nav
---

{% collections.projects.resources.each do |project| %}
  <div class="bg-white shadow rounded-sm border-slate-800 p-4">
    <a href="{{ project.relative_url }}"><h3>{{ project.data.title }}</h3></a>
    <p>{{ project.data.description }}</p>
    <hr />
  </div>
{% end %}
