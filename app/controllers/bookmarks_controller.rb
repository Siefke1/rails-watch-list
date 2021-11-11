class BookmarksController < ApplicationController

  before_action :set_bookmark, only: [:destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.list.movie.new
  end

  def create
  end

  def destroy
    @bookmark.delete
  end
  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
