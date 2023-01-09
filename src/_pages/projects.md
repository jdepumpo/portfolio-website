---
layout: page
title: Projects
category:
  - top_nav
---

{% collections.projects.resources.each do |project| %}
  <div class="bg-white shadow rounded border border-slate-300 p-8">
    <div class="flex flex-col gap-4 lg:flex-row lg:gap-16">
      <div class="lg:shrink">
        <a href="{{ project.relative_url }}"><h3>{{ project.data.title }}</h3></a>
        <p>{{ project.data.description }}</p>
        <div class="flex flex-wrap gap-2 gap-y-3 mt-4 lg:mt-8">
          {% project.data.tags.each do |tag| %}
            {%= render IconBadge.new(tag: tag) %}
          {% end %}
        </div>
      </div>
      <div class="lg:basis-1/4">
        <div class="flex flex-row lg:flex-col gap-2 lg:gap-4 place-content-center h-full">
          <a href="/" class="pointer-events-auto text-center text-nowrap rounded-sm bg-slate-400 py-2 px-4 mr-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-slate-500"><i class="devicon-github-plain text-white text-sm mr-2"></i><span>View on GitHub</span></a>
          <a href="/" class="pointer-events-auto text-center text-nowraprounded-sm bg-blue-500 py-2 px-4 mr-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900"><i class="fa-solid fa-arrow-right text-white text-sm mr-2"></i><span>Learn More</span></a>
        </div>
      </div>
    </div>
  </div>
{% end %}
