class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  # GET /musics
  # GET /musics.json
  def index
    client ||= SoundCloudHelper.new
    @hottest_tracks = client.hottest_tracks
    @playlist = client.playlists
    @embed_info = client.widget
  end

end
