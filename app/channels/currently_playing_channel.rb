# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class CurrentlyPlayingChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "currently_playing"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed

  end

  def suggest_song(data)
    ActionCable.server.broadcast('currently_playing', suggested_song: render_suggest_song(data['suggested_song']))
  end

  private

    def render_suggest_song(suggested_song)
      ApplicationController.render(partial: 'welcome/suggested_song',
                                    locals: { suggested_song: suggested_song,
                                              username: current_user
                                            })
    end

end
