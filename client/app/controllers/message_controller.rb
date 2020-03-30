class MessageController < ApplicationController
  def put
    Sidekiq::Client.push('class' => 'MessageWorker', 'args' => ["Hi User #{Time.now}"])
  end

  def index

  end
end