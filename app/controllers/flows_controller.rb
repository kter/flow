class FlowsController < ApplicationController
  # TODO: show, editにset_flowメソッドを追加
  def index
    @flow = Tflow.all().eager_load(:task)
  end

  def show
    @flow = Tflow.find(params['id'])
  end

  def new
  end

  def edit
    @flow = Tflow.find(params['id'])
  end
  
  def create
  end
  
  def update
    respond_to do |format|
      @flow = Tflow.find(params[:id])
      if @flow.update(tflow_params)
        format.html { redirect_to flow_path(@flow.id) }
        format.json { render :show, status: :ok, location: @flow }
      else
        format.html { render :edit }
        format.json { render json: @flow.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end
  
  def tflow_params
    params.require(:tflow).permit(
      :name,
      :description,
      task_attributes: [
        :name,
        :description
      ]
    )
  end
end
