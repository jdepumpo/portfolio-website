let display = 0;

const turboPersistAlertAfter = (display) => {
  document.addEventListener('turbo:load', (event) => {
    console.log("render", display)
    if (display === 1) {
      document.getElementById("OpenToWorkAlert").classList.add("hidden");
    }
  })
}

const turboPersistAlertBefore = () => {
  document.addEventListener('turbo:before-visit', (event) => {
    display = document.getElementById("OpenToWorkAlert").dataset.alertBannerOffValue;
    console.log("storing", display)
    turboPersistAlertAfter(display)
  })
}

turboPersistAlertBefore();
