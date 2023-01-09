class AlertBanner < HTMLElement
  def connected_callback()
    self.inner_html = "
    <div id='OpenToWorkAlert' data-controller='alert-banner' data-alert-banner-off-value='0' class='bg-blue-200 outline outline-2 outline-slate-400'>
      <div class='flex flex-col md:flex-row place-items-center justify-between gap-4 xl:mx-auto max-w-7xl py-4 px-4 md:px-6 lg:px-8'>
        <div class='shrink text-center md:text-left'>
          <span>I am currently <strong>#OpenToWork</strong> and would be thrilled to discuss your opportunity.</span>
        </div>
        <div class='flex flex-row gap-2'>
          <a href='https://cloud.depumpo.com/index.php/apps/appointments/pub/JVrV01d8ZaJ8pYPz/form' target='_blank' class='inline-flex items-baseline pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-solid fa-calendar mr-2'></i>Connect</a>
          <a href='/resume' class='inline-flex items-baseline pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-solid fa-file mr-2'></i>Resume</a>
          <a href='https://www.linkedin.com/in/jdepumpo/' target='_blank' class='inline-flex items-baseline pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-brands fa-linkedin mr-2'></i>LinkedIn</a>
        </div>
      </div>
    </div>
    "
  end
end

custom_elements.define "alert-banner", AlertBanner
