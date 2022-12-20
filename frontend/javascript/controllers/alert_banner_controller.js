import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static values = { off: Number }

  initialize() {
    this.element.classList.remove("hidden");
  }

  close() {
    this.element.classList.add("hidden");
    this.offValue = 1;
    console.log(this.offValue);
  }

  connect() {
    console.log(this.offValue)
    if (this.offValue === 1) {
      this.element.classList.add("hidden");
    }
  }
}
