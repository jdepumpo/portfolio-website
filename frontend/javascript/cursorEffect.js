import { textFlag } from 'cursor-effects';

const triggerElement = document.querySelector("#cursor-trigger");
const targetElement = document.querySelector("#cursor-effect");

function destroyEffect(effect) {
  targetElement.addEventListener("mouseleave", (event) => {
    effect.destroy();
  });
};

triggerElement.addEventListener("mouseover", (event) => {
  let effect = new textFlag({ element: targetElement, text: "Now THAT is cool!!!", color: ["#1e40af"] });
  destroyEffect(effect);
});
