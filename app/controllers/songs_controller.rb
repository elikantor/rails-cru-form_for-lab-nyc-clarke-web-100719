class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def create
        @song = Song.create(song_params)
        redirect_to @song
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.update(song_params)
        redirect_to @song
    end

    private

    def song_params
       params.require(:song).permit(:name, :artist_id, :genre_id) 
    end

end
