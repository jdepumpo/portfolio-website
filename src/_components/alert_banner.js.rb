class AlertBanner < HTMLElement
  def connected_callback()
    self.inner_html = "
    <div id='OpenToWorkAlert' data-controller='alert-banner' data-alert-banner-off-value='0' class='bg-blue-200 px-2 py-4 flex flex-row items-center outline outline-2 outline-slate-400'>
      <div class='flex flex-wrap lg:flex-nowrap text-center grow justify-center sm:max-md:gap-y-2'>
        <div class='basis-2/3'>
          <span>I am currently <strong>#OpenToWork</strong> and would be thrilled to discuss your opportunity.</span>
        </div>
        <div>
          <a href='https://cloud.depumpo.com/index.php/apps/appointments/pub/JVrV01d8ZaJ8pYPz/form' target='_blank' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 mr-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-solid fa-calendar mr-2'></i>Connect</a>
          <a href='/resume' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 mr-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-solid fa-file mr-2'></i>Resume</a>
          <a href='https://www.linkedin.com/in/jdepumpo/' target='_blank' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-brands fa-linkedin mr-2'></i>LinkedIn</a>
        </div>
      </div>
      <!-- <div class='justify-end'>
        <button type='button' data-action='click->alert-banner#close' class='box-content w-4 h-4 p-1 ml-auto opacity-50 hover:opacity-75 hover:no-underline' aria-label='Close'><i class='fa-solid fa-xmark'></i></button>
      </div> -->
    </div>
    "
  end
end

custom_elements.define "alert-banner", AlertBanner
