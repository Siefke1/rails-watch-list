class BookmarksController < ApplicationController

  before_action :set_bookmark, only: [:new, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def new
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
