import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["desktop", "mobile"]

  connect() {
    this.updateActiveLink()
  }

  updateActiveLink() {
    const currentPath = window.location.pathname
    this.desktopTargets.forEach((desktop) => {
      if (desktop.pathname === currentPath) {
        desktop.classList.remove("text-blue-200", "hover:bg-blue-800", "hover:text-white",)
        desktop.classList.replace("decoration-orange-400/60", "decoration-orange-400/30")
        desktop.classList.replace("decoration-2", "decoration-4")
        desktop.classList.add("bg-blue-800", "text-white")
      } else {
        desktop.classList.remove("bg-blue-800", "text-white")
        desktop.classList.replace("decoration-orange-400/30", "decoration-orange-400/60")
        desktop.classList.replace("decoration-4", "decoration-2")
        desktop.classList.add("text-blue-200", "hover:bg-blue-800", "hover:text-white")
      }
    })
  }
}
