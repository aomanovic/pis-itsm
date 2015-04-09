class ChangeEvaluationsController < ApplicationController
  before_action :set_change_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /change_evaluations
  # GET /change_evaluations.json
  def index
    @change_evaluations = ChangeEvaluation.all
  end

  # GET /change_evaluations/1
  # GET /change_evaluations/1.json
  def show
  end

  # GET /change_evaluations/new
  def new
    @change_evaluation = ChangeEvaluation.new
  end

  # GET /change_evaluations/1/edit
  def edit
  end

  # POST /change_evaluations
  # POST /change_evaluations.json
  def create
    @change_evaluation = ChangeEvaluation.new(change_evaluation_params)

    respond_to do |format|
      if @change_evaluation.save
        format.html { redirect_to @change_evaluation, notice: 'Change evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @change_evaluation }
      else
        format.html { render :new }
        format.json { render json: @change_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_evaluations/1
  # PATCH/PUT /change_evaluations/1.json
  def update
    respond_to do |format|
      if @change_evaluation.update(change_evaluation_params)
        format.html { redirect_to @change_evaluation, notice: 'Change evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @change_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_evaluations/1
  # DELETE /change_evaluations/1.json
  def destroy
    @change_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to change_evaluations_url, notice: 'Change evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_evaluation
      @change_evaluation = ChangeEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_evaluation_params
      params.require(:change_evaluation).permit(:rate, :description, :change_request, :user_id)
    end
end
