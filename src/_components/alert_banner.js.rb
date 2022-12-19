class AlertBanner < HTMLElement
  def connected_callback()
    self.inner_html = "
    <div class='bg-blue-200 px-2 py-4 flex align-content-center outline outline-2 outline-slate-400'>
      <div  class='flex-grow text-center'>
        <span>I am currently <strong>#OpenToWork</strong> and would be thrilled to discuss your opportunity.</span>
        <a href='#' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'>Connect</a>
        <a href='#' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'>Resume</a>
        <a href='#' class='pointer-events-auto rounded-sm bg-blue-500 py-2 px-4 text-[0.8125rem] no-underline font-semibold leading-5 text-white hover:bg-blue-900'>LinkedIn</a>
      </div>
      <button type='button' class='box-content w-4 h-4 p-1 ml-auto opacity-50 hover:opacity-75 hover:no-underline' data-bs-dismiss='alert' aria-label='Close'><i class='fa-solid fa-xmark'></i></button>
    </div>
    "
  end
end

custom_elements.define "alert-banner", AlertBanner
