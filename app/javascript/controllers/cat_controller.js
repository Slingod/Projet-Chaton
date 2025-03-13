import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["catImage"];

  loadCat() {
    fetch("https://api.thecatapi.com/v1/images/search", {
      headers: {
        "x-api-key": "live_uvbG2Vt2HeYRElODarZRIkDjppnPxKuw9FIhcBkKzUH76OkK0h6Mk2YEk0cBZrVM"
      }
    })
      .then(response => response.json())
      .then(data => {
        if (data.length > 0) {
          this.catImageTarget.src = data[0].url;
        }
      })
      .catch(error => console.error("Erreur API :", error));
  }
}
