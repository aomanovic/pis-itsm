class ItProcessesController < ApplicationController
  before_action :set_it_process, only: [:show, :edit]
  before_filter :is_logged



  # GET /it_processes
  # GET /it_processes.json
  def index
    @it_process = ItProcess.all
  end

  # GET /it_processes/1
  # GET /it_processes/1.json
  def show
  end

  # GET /it_processes/new
  def new
    @it_process = ItProcess.new
  end

  # GET /it_processes/1/edit
  def edit
  end


  # POST /it_processes
  # POST /it_processes.json
  def create
    @it_process = ItProcess.new(it_process_params)

    respond_to do |format|
      if @it_process.save
        format.html { redirect_to @it_process, notice: 'Process was successfully created.' }
        format.json { render :show, status: :created, location: @it_process }
      else
        format.html { render :new }
        format.json { render json: @it_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PATCH/PUT /it_processes/1
  # # PATCH/PUT /it_processes/1.json
  # def update
  #   respond_to do |format|
  #     if @it_process.update(it_process_params)
  #       format.html { redirect_to @it_process, notice: 'Process was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @it_process }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @it_process.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /it_processes/1
  # # DELETE /it_processes/1.json
  # def destroy
  #   @it_process.destroy
  #   respond_to do |format|
  #     format.html { redirect_to it_processes_url, notice: 'Process was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_it_process
    @it_process = ItProcess.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def it_process_params
    params.require(:it_process).permit(:code, :name, :description)
  end
end