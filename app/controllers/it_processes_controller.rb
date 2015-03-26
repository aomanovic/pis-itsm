class ItProcessesController < ApplicationController
  before_filter :is_logged

  def show
    @it_process = ItProcess.find(params[:id])
  end


  def new
    @it_process = ItProcess.new
  end

  def create
    @it_process = ItProcess.new(it_process_params)
    if @it_process.save

      flash[:success] = "Created!"
      redirect_to @it_process
    else
      render 'new'
    end
  end

  private

  def it_process_params
    params.permit(:code, :name, :description)
  end
end
