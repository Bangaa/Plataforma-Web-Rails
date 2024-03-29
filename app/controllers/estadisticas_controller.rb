class EstadisticasController < ApplicationController
  before_action :set_estadistica, only: [:show, :edit, :update, :destroy]

  # GET /estadisticas
  # GET /estadisticas.json
  def index
    @estadisticas = Estadistica.all
  end

  # GET /estadisticas/1
  # GET /estadisticas/1.json
  def show
  end

  # GET /estadisticas/new
  def new
    @estadistica = Estadistica.new
  end

  # GET /estadisticas/1/edit
  def edit
  end

  # POST /estadisticas
  # POST /estadisticas.json
  def create
    @estadistica = Estadistica.new(estadistica_params)

    respond_to do |format|
      if @estadistica.save
        format.html { redirect_to @estadistica, notice: 'Estadistica was successfully created.' }
        format.json { render :show, status: :created, location: @estadistica }
      else
        format.html { render :new }
        format.json { render json: @estadistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadisticas/1
  # PATCH/PUT /estadisticas/1.json
  def update
    respond_to do |format|
      if @estadistica.update(estadistica_params)
        format.html { redirect_to @estadistica, notice: 'Estadistica was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadistica }
      else
        format.html { render :edit }
        format.json { render json: @estadistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadisticas/1
  # DELETE /estadisticas/1.json
  def destroy
    @estadistica.destroy
    respond_to do |format|
      format.html { redirect_to estadisticas_url, notice: 'Estadistica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadistica
      @estadistica = Estadistica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadistica_params
      params.require(:estadistica).permit(:estadistica_id, :positivos, :negativos, :neutrales, :suma_total)
    end
end
