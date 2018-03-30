App.messages = App.cable.subscriptions.create('MessagesChannel', {
  connected: function() {

  },

  disconnected: function() {

  },

  received: function(data) {
    // $("#messages").removeClass('hidden')
    return $('#messages').prepend(data['message']);
  },

  renderMessage: function(data) {
    return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
  }
});
