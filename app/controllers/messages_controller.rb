class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.user = User.first
    if message.save
      ActionCable.server.broadcast 'messages_channel',
        message: "<p>#{message.full_message}</p>"
    else
      redirect_to chatrooms_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:full_message, :chatroom_id)
    end
end
