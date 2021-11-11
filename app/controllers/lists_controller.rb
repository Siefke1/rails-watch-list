class ListsController < ApplicationController
  before_action :set_list, only: [:show, :new]

  def index
    @lists = List.all
  end

  def show
  end

  def new
  end

  def create
    @list = List.new(list_params)
    if @list.update
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
