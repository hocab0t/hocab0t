module Bot
  module DiscordCommands
    module Hoca
      extend Discordrb::Commands::CommandContainer
      command :hocala do |event|
        channel = event.user.voice_channel
        server = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.play_file('data/earrape.mp3')
        BOT.voice_destroy(server)
      end
    end
  end
end
