class FlowsController < ApplicationController
  def index
    @flow = Tflow.all().eager_load(:task)
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
