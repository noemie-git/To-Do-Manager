class TasksController < ApplicationController
  def index
    # get all the restaurants from the db
    @tasks = Task.all
  end
end
