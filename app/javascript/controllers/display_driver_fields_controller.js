import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-driver-fields"
export default class extends Controller {
  static targets = ["driver"]

  toggleDisplay(e) {
    this.driverTarget.classList.toggle("d-none")
  }
}
