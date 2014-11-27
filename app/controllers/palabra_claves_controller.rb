class PalabraClavesController < ApplicationController
  before_action :set_palabra_clave, only: [:show, :edit, :update, :destroy]

  # GET /palabra_claves
  # GET /palabra_claves.json
  def index
    @palabra_claves = PalabraClave.all
  end

  # GET /palabra_claves/1
  # GET /palabra_claves/1.json
  def show
  end

  # GET /palabra_claves/new
  def new
    @palabra_clave = PalabraClave.new
  end

  # GET /palabra_claves/1/edit
  def edit
  end

  # POST /palabra_claves
  # POST /palabra_claves.json
  def create
    @palabra_clave = PalabraClave.new(palabra_clave_params)

    respond_to do |format|
      if @palabra_clave.save
        format.html { redirect_to @palabra_clave, notice: 'Palabra clave was successfully created.' }
        format.json { render :show, status: :created, location: @palabra_clave }
      else
        format.html { render :new }
        format.json { render json: @palabra_clave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palabra_claves/1
  # PATCH/PUT /palabra_claves/1.json
  def update
    respond_to do |format|
      if @palabra_clave.update(palabra_clave_params)
        format.html { redirect_to @palabra_clave, notice: 'Palabra clave was successfully updated.' }
        format.json { render :show, status: :ok, location: @palabra_clave }
      else
        format.html { render :edit }
        format.json { render json: @palabra_clave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palabra_claves/1
  # DELETE /palabra_claves/1.json
  def destroy
    @palabra_clave.destroy
    respond_to do |format|
      format.html { redirect_to palabra_claves_url, notice: 'Palabra clave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palabra_clave
      @palabra_clave = PalabraClave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palabra_clave_params
      params.require(:palabra_clave).permit(:palabra_clave_id, :palabra)
    end
end
