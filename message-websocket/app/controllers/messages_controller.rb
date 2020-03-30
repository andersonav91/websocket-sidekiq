class MessagesController < ApplicationController
  def index
  end

  def put
    MessageWorker.perform_async('first-message')
    render json: {message: 'ok'}
  end
end
