import "bridgetown-lit-renderer"
import "index.css"
import "syntax-highlighting.css"
import * as Turbo from "@hotwired/turbo"
import "@fortawesome/fontawesome-free/css/all"
import { Application } from "@hotwired/stimulus"
import "tw-elements"
import "./cursorEffect"

// Uncomment the line below to add transition animations when Turbo navigates.
// We recommend adding <meta name="turbo-cache-control" content="no-preview" />
// to your HTML head if you turn on transitions. Use data-turbo-transition="false"
// on your <main> element for pages where you don't want any transition animation.
//
//import "./turbo_transitions.js"
//import "./persist_alert_banner.js"

// Import all JavaScript & CSS files from src/_components
// To opt into `.global.css` & `.lit.css` nomenclature, change the `css` extension below to `global.css`.
// Read https://edge.bridgetownrb.com/docs/components/lit#sidecar-css-files for documentation.
import components from "bridgetownComponents/**/*.{js,jsx,js.rb,global.css}"

console.info("Bridgetown is loaded!")

window.Stimulus = Application.start()

import controllers from "./controllers/**/*.{js,js.rb}"
Object.entries(controllers).forEach(([filename, controller]) => {
  if (filename.includes("_controller.") || filename.includes("-controller.")) {
    const identifier = filename.replace("./controllers/", "")
      .replace(/[_-]controller..*$/, "")
      .replace("_", "-")
      .replace("/", "--")

    Stimulus.register(identifier, controller.default)
  }
})
