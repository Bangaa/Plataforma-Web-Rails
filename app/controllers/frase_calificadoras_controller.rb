class FraseCalificadorasController < ApplicationController
  before_action :set_frase_calificadora, only: [:show, :edit, :update, :destroy]

  # GET /frase_calificadoras
  # GET /frase_calificadoras.json
  def index
    @frase_calificadoras = FraseCalificadora.all
  end

  # GET /frase_calificadoras/1
  # GET /frase_calificadoras/1.json
  def show
  end

  # GET /frase_calificadoras/new
  def new
    @frase_calificadora = FraseCalificadora.new
  end

  # GET /frase_calificadoras/1/edit
  def edit
  end

  # POST /frase_calificadoras
  # POST /frase_calificadoras.json
  def create
    @frase_calificadora = FraseCalificadora.new(frase_calificadora_params)

    respond_to do |format|
      if @frase_calificadora.save
        format.html { redirect_to @frase_calificadora, notice: 'Frase calificadora was successfully created.' }
        format.json { render :show, status: :created, location: @frase_calificadora }
      else
        format.html { render :new }
        format.json { render json: @frase_calificadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frase_calificadoras/1
  # PATCH/PUT /frase_calificadoras/1.json
  def update
    respond_to do |format|
      if @frase_calificadora.update(frase_calificadora_params)
        format.html { redirect_to @frase_calificadora, notice: 'Frase calificadora was successfully updated.' }
        format.json { render :show, status: :ok, location: @frase_calificadora }
      else
        format.html { render :edit }
        format.json { render json: @frase_calificadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frase_calificadoras/1
  # DELETE /frase_calificadoras/1.json
  def destroy
    @frase_calificadora.destroy
    respond_to do |format|
      format.html { redirect_to frase_calificadoras_url, notice: 'Frase calificadora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frase_calificadora
      @frase_calificadora = FraseCalificadora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frase_calificadora_params
      params.require(:frase_calificadora).permit(:frase_calificadora_id, :frase, :estado_animo)
    end
end
