import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static values = { off: Number }

  close() {
    this.element.classList.add("hidden");
    this.offValue = 1;
  }
}
