class MessageWorker
  include Sidekiq::Worker

  def perform(content = '')
    puts "Message: #{content}"
    ActionCable.server.broadcast 'messages', message: "Message: #{content}"
  end
end