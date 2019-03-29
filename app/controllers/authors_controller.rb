require "pry"

class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    end
    render :create
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
