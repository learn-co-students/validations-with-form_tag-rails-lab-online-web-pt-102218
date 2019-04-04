class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
     binding.pry
     if Author.create(author_params).valid?
      
      redirect_to author_path(@author)
     else 
       redirect_to new_author 
     end 
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
