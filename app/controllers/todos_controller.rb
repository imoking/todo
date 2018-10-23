class TodosController < ApplicationController
  before_action :new
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find_by(id: params[:id])
  end
  
  def new
    @todo = Todo.new
  end
  
  
  def create
    @todo = Todo.new(content: params.require(:todo))
    @todo.save
    redirect_to('/')
  end
  
  def update
  end
end