App.currently_playing = App.cable.subscriptions.create "CurrentlyPlayingChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#song-queue').append(data.suggested_song)

  suggest_song: (suggested_song) ->
    @perform 'suggest_song', suggested_song: suggested_song

  $(document).on 'keypress', '#suggested_song', (event) ->
    if event.keyCode is 13
      App.currently_playing.suggest_song(event.target.value)
      event.target.value = ""
      event.preventDefault()
