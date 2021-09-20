class FlowsController < ApplicationController
  def index
    @flow = Tflow.all().eager_load(:task)
  end

  def show
    @flow = Tflow.find(params['id'])
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
