const turbolinksPersistAlerts = () => {
  display = 0;

  document.addEventListener('turbolinks:before-visit', (event) => {
    display = document.getElementById("OpenToWorkAlert").dataset.alertBannerOffValue;
    console.log("storing", display)
  })

  document.addEventListener('turbolinks:load', (event) => {
    document.getElementById("OpenToWorkAlert").dataset.alertBannerOffValue = display;
    console.log("rendering", display);
  })
}

turbolinksPersistAlerts();
