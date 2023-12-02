import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    content: String
  }

  connect(){
    this.originalText = this.element.textContent
  }

  copy() {
    navigator.clipboard.writeText(this.contentValue).then(
      () => {
        /* clipboard successfully set */
        this.element.textContent = "Copied!"
        setTimeout(() => {
          this.element.textContent = this.originalText
        }, 10000);
      },
      () => {
        /* clipboard write failed */
        alert("Failed to copy to clip board")
      },
    );

  }
}
