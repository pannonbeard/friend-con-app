import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button-group"
export default class extends Controller {
  static targets = [ "btnOpen", "btnDropdown"]
  connect() {
  }

  toggle() {
    if(this.element.getAttribute('aria-expanded') === 'true') {
      this.close()
    } else {
      this.open()
    }
  }

  open() {
    this.element.setAttribute('aria-expanded', 'true')
  }

  close() {
    this.element.setAttribute('aria-expanded', 'false')
  }
}
