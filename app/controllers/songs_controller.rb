class SongsController < ApplicationController
  before_action :find_song, except: [:index, :new, :create]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def update
    if @song.update_attributes(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    if @song.destroy
      redirect_to songs_path
    else
      redirect_to songs_path
    end
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end

end
