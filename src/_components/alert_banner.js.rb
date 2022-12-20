class AlertBanner < HTMLElement
  def connected_callback()
    self.inner_html = "
    <div class='bg-blue-200 px-2 py-4 flex items-center outline outline-2 outline-slate-400'>
      <div class='flex-wrap md:flex-nowrap justify-center sm:max-md:gap-y-2'>
        <div class='grow text-center'>
          <span>I am currently <strong>#OpenToWork</strong> and would be thrilled to discuss your opportunity.</span>
        </div>
          <a href='#' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 mx-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-solid fa-calendar mr-2'></i>Connect</a>
          <a href='#' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 mx-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-solid fa-file mr-2'></i>Resume</a>
          <a href='#' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 mx-2 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'><i class='fa-brands fa-linkedin mr-2'></i>LinkedIn</a>
        </div>
      <div>
        <button type='button' class='box-content w-4 h-4 p-1 ml-auto opacity-50 hover:opacity-75 hover:no-underline' aria-label='Close'><i class='fa-solid fa-xmark'></i></button>
      </div>
    </div>
    "
  end
end

custom_elements.define "alert-banner", AlertBanner
