const chatform = jQuery.noConflict();

chatform(() => {
  chatform(".chatform-open").click(() =>
    chatform(".chatform-popup, .chatform-close").fadeIn()
  );

  chatform(".chatform-close").click(() =>
    chatform(".chatform-popup, .chatform-close").fadeOut()
  );

  chatform(".chatform-maximize").click(() => {
    chatform(".chatform-popup, .chatform-open, .chatform-close").fadeOut();
    chatform(".chatform-panel").fadeIn();
    chatform(".chatform-panel").css({ display: "flex" });
  });

  chatform(".chatform-minimize").click(() => {
    chatform(".chatform-panel").fadeOut();
    chatform(".chatform-popup, .chatform-open, .chatform-close").fadeIn();
  });

  chatform(".chatform-panel-close").click(() => {
    chatform(".chatform-panel").fadeOut();
    chatform(".chatform-open").fadeIn();
  });
});
