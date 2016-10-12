class PagesController < ApplicationController
  def home
    @users = User.all
    @todo = Todo.all
    @cats = Cats.all
  end
  def new
  end
  def user_create
  User.create(
    :username=> params[:username],
    :email=> params[:email],
    :age=> params[:age]
    )
    redirect_to '/'
  end

  def todo_create
  Todo.create(
    :tasks => params[:tasks],
    :finished => params[:finished]
    )
    redirect_to '/'
  end

  def cats_create
    Cats.create(
    :name => params[:name]
    )
    redirect_to '/'
  end
end
