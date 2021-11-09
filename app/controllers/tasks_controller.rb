class TasksController < ApplicationController
  def index
    # get all the restaurants from the db
    @tasks = Task.all
  end

  def show
    # we need to get the id of the restaurant
    # go to the db and get the restaurant instance with that id
    @task = Task.find(params[:id])
  end
end
