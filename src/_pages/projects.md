---
layout: page
title: Projects
category:
  - top_nav
---

{% collections.projects.resources.each do |project| %}
  <div class="bg-white shadow rounded border border-slate-300 p-4">
    <a href="{{ project.relative_url }}"><h3>{{ project.data.title }}</h3></a>
    <p>{{ project.data.description }}</p>
    <hr class="my-4" />
    {% project.data.tags.each do |tag| %}
      {%= render IconBadge.new(tag: tag) %}
    {% end %}
  </div>
{% end %}
