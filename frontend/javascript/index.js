import "index.css"
import "syntax-highlighting.css"
import * as Turbo from "@hotwired/turbo"
import "bridgetown-lit-renderer"

// Uncomment the line below to add transition animations when Turbo navigates.
// We recommend adding <meta name="turbo-cache-control" content="no-preview" />
// to your HTML head if you turn on transitions. Use data-turbo-transition="false"
// on your <main> element for pages where you don't want any transition animation.
//
// import "./turbo_transitions.js"

// Import all JavaScript & CSS files from src/_components
// To opt into `.global.css` & `.lit.css` nomenclature, change the `css` extension below to `global.css`.
// Read https://edge.bridgetownrb.com/docs/components/lit#sidecar-css-files for documentation.
import components from "bridgetownComponents/**/*.{js,jsx,js.rb,css}"

console.info("Bridgetown is loaded!")
