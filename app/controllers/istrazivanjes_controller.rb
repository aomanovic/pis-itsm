class IstrazivanjesController < ApplicationController
  before_action :set_istrazivanje, only: [:show, :edit, :update, :destroy]

  # GET /istrazivanjes
  # GET /istrazivanjes.json
  def index
    @istrazivanjes = Istrazivanje.all
  end

  # GET /istrazivanjes/1
  # GET /istrazivanjes/1.json
  def show
  end

  # GET /istrazivanjes/new
  def new
    @problems = Problem.all
    @changes = Change.all
    @istrazivanje = Istrazivanje.new
  end

  # GET /istrazivanjes/1/edit
  def edit
  end

  # POST /istrazivanjes
  # POST /istrazivanjes.json
  def create
    @istrazivanje = Istrazivanje.new(istrazivanje_params)

    respond_to do |format|
      if @istrazivanje.save
        format.html { redirect_to @istrazivanje, notice: 'Istrazivanje was successfully created.' }
        format.json { render :show, status: :created, location: @istrazivanje }
      else
        format.html { render :new }
        format.json { render json: @istrazivanje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /istrazivanjes/1
  # PATCH/PUT /istrazivanjes/1.json
  def update
    respond_to do |format|
      if @istrazivanje.update(istrazivanje_params)
        format.html { redirect_to @istrazivanje, notice: 'Istrazivanje was successfully updated.' }
        format.json { render :show, status: :ok, location: @istrazivanje }
      else
        format.html { render :edit }
        format.json { render json: @istrazivanje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /istrazivanjes/1
  # DELETE /istrazivanjes/1.json
  def destroy
    @istrazivanje.destroy
    respond_to do |format|
      format.html { redirect_to istrazivanjes_url, notice: 'Istrazivanje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_istrazivanje
      @istrazivanje = Istrazivanje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def istrazivanje_params
      params.require(:istrazivanje).permit(:klasa, :komentar, :potreban_zahtjev, :problem_id)
    end
end
