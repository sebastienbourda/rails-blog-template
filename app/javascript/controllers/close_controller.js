import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="close"
export default class extends Controller {
  static targets = [ "close" ]

  connect() {
    console.log("Connected to close controller", this.closeTarget)
    this.initialize()
  }

  initialize() {
    console.log("Initialized")
    this.closeTarget.style.transform = "translateX(0)"
  }

  close() {
    console.log("Closing")
    this.closeTarget.style.transform = "translateX(200%)"
  }

  // trigger the close method after 3 seconds
  initialize() {
    setTimeout(() => {
      this.close()
    }, 3000)
  }
}
