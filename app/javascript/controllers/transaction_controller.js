import ApplicationController from "./application_controller";

/* This is the custom StimulusReflex controller for the Transaction Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  add(event) {
    event.preventDefault();

    this.stimulate("transaction#add", event.target);
  }

  addSuccess(element) {
    element.querySelectorAll("input").forEach((input) => (input.value = ""));
  }

  remove(event) {
    this.stimulate("transaction#remove", event.target);
  }
}
