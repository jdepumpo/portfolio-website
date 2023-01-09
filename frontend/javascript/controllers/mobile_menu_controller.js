import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ "svg1", "svg2", "menu" ]

  toggle() {
    this.svg1Target.classList.toggle("hidden");
    this.svg1Target.classList.toggle("block");
    this.svg2Target.classList.toggle("hidden");
    this.svg2Target.classList.toggle("block");
    this.menuTarget.classList.toggle("hidden");
    this.menuTarget.classList.toggle("block");
  }
}
