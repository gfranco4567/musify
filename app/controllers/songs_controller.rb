class SongsController < ApplicationController


def create

  @song = Song.new(song_params)
  @song.playlist_id = params[:playlist_id]

  @song.save

  redirect_to @song.playlist, notice: 'Canción creada con éxito'

end

def destroy
  @song = Song.find(params[:id])
  @song.destroy

redirect_to playlist_path(@song)
 end

private

def song_params
params.require(:song).permit(:artist, :name)
end


end
