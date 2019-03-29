class AuthorsController < ApplicationController
  def show
    binding.pry
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to auhtor_path(@author)
    end
    render :create
  end

  private

  def author_params
    params.require(:author).permit(:name, :email, :phone_number)
  end
end
