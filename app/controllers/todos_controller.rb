class TodosController < ApplicationController
  before_action :new
  def index
    @todos = Todo.all
  end

  def detile
  end
  
  def new
    @todo = Todo.new
  end
  
  def show
  end
  
  def create
    @todo = Todo.new(content: params[:content])
    @todo.save
    redirect_to('/')
  end
  
  def update
  end
end
