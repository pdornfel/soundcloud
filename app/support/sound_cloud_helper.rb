class SoundCloudHelper

  def initialize
    @client = SoundCloud.new({
      client_id: ENV['sc_client_id'],
      client_secret: ENV['sc_client_secret'],
      username: ENV['sc_user_name'],
      password: ENV['sc_password']
      })
  end

  def hottest_tracks
    @tracks = @client.get('/tracks', :limit => 10, :order => 'hotness')
  end

  def playlists
    @playlists = @client.get("/me/tracks")
  end

  def widget
    track_url = 'https://soundcloud.com/axwell/adrian-lux-teenage-crime'
    @embed_info = @client.get('/oembed', :url => track_url)
  end

end
