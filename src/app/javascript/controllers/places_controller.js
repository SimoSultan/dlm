

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "field" ]

  // initializes the autocomplete if google wasn't undefined
  connect() {
    if (typeof(google) != "undefined") {
      this.initMap()
    }
  }

    // initializes the autocomplete for the address fields
    // limits the results to australian addresses
  initMap() {
    if (this.autocomplete == undefined) {
    this.autocomplete = new google.maps.places.Autocomplete(this.fieldTarget)
                            .setComponentRestrictions(
                              {'country': ['aus']}
                            )
    }
  }

  // prevents form submitting when user presses enter on the address they want
  preventSubmit(e) {
    if (e.key == "Enter") {
      e.preventDefault()
    }
  }
}
