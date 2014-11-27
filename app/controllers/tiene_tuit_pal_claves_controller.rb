class TieneTuitPalClavesController < ApplicationController
  before_action :set_tiene_tuit_pal_clafe, only: [:show, :edit, :update, :destroy]

  # GET /tiene_tuit_pal_claves
  # GET /tiene_tuit_pal_claves.json
  def index
    @tiene_tuit_pal_claves = TieneTuitPalClave.all
  end

  # GET /tiene_tuit_pal_claves/1
  # GET /tiene_tuit_pal_claves/1.json
  def show
  end

  # GET /tiene_tuit_pal_claves/new
  def new
    @tiene_tuit_pal_clafe = TieneTuitPalClave.new
  end

  # GET /tiene_tuit_pal_claves/1/edit
  def edit
  end

  # POST /tiene_tuit_pal_claves
  # POST /tiene_tuit_pal_claves.json
  def create
    @tiene_tuit_pal_clafe = TieneTuitPalClave.new(tiene_tuit_pal_clafe_params)

    respond_to do |format|
      if @tiene_tuit_pal_clafe.save
        format.html { redirect_to @tiene_tuit_pal_clafe, notice: 'Tiene tuit pal clave was successfully created.' }
        format.json { render :show, status: :created, location: @tiene_tuit_pal_clafe }
      else
        format.html { render :new }
        format.json { render json: @tiene_tuit_pal_clafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiene_tuit_pal_claves/1
  # PATCH/PUT /tiene_tuit_pal_claves/1.json
  def update
    respond_to do |format|
      if @tiene_tuit_pal_clafe.update(tiene_tuit_pal_clafe_params)
        format.html { redirect_to @tiene_tuit_pal_clafe, notice: 'Tiene tuit pal clave was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiene_tuit_pal_clafe }
      else
        format.html { render :edit }
        format.json { render json: @tiene_tuit_pal_clafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiene_tuit_pal_claves/1
  # DELETE /tiene_tuit_pal_claves/1.json
  def destroy
    @tiene_tuit_pal_clafe.destroy
    respond_to do |format|
      format.html { redirect_to tiene_tuit_pal_claves_url, notice: 'Tiene tuit pal clave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiene_tuit_pal_clafe
      @tiene_tuit_pal_clafe = TieneTuitPalClave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiene_tuit_pal_clafe_params
      params.require(:tiene_tuit_pal_clafe).permit(:tuit_palClave_id)
    end
end
