import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal", "image"]

  open(event) {
    const imageUrl = event.currentTarget.getAttribute("src");
    this.modalTarget.classList.remove("hidden");
    this.modalTarget.querySelector("img").setAttribute("src", imageUrl)
    // this.imageTarget.setAttribute("src", imageUrl);
  }

  close(event) {
    console.log("HELLO ")
    this.modalTarget.classList.add("hidden");
  }
}
