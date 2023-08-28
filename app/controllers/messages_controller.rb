class MessagesController < ApplicationController
  def create
    Message.new(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
