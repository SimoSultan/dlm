

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "field" ]

  connect() {
    if (typeof(google) != "undefined") {
      this.initMap()
    }
  }

  initMap() {
    if (this.autocomplete == undefined) {
    this.autocomplete = new google.maps.places.Autocomplete(this.fieldTarget)
                            .setComponentRestrictions(
                              {'country': ['aus']}
                            )
    }
  }

  preventSubmit(e) {
    if (e.key == "Enter") {
      e.preventDefault()
    }
  }
}
