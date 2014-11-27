class TieneTuitPalCalsController < ApplicationController
  before_action :set_tiene_tuit_pal_cal, only: [:show, :edit, :update, :destroy]

  # GET /tiene_tuit_pal_cals
  # GET /tiene_tuit_pal_cals.json
  def index
    @tiene_tuit_pal_cals = TieneTuitPalCal.all
  end

  # GET /tiene_tuit_pal_cals/1
  # GET /tiene_tuit_pal_cals/1.json
  def show
  end

  # GET /tiene_tuit_pal_cals/new
  def new
    @tiene_tuit_pal_cal = TieneTuitPalCal.new
  end

  # GET /tiene_tuit_pal_cals/1/edit
  def edit
  end

  # POST /tiene_tuit_pal_cals
  # POST /tiene_tuit_pal_cals.json
  def create
    @tiene_tuit_pal_cal = TieneTuitPalCal.new(tiene_tuit_pal_cal_params)

    respond_to do |format|
      if @tiene_tuit_pal_cal.save
        format.html { redirect_to @tiene_tuit_pal_cal, notice: 'Tiene tuit pal cal was successfully created.' }
        format.json { render :show, status: :created, location: @tiene_tuit_pal_cal }
      else
        format.html { render :new }
        format.json { render json: @tiene_tuit_pal_cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiene_tuit_pal_cals/1
  # PATCH/PUT /tiene_tuit_pal_cals/1.json
  def update
    respond_to do |format|
      if @tiene_tuit_pal_cal.update(tiene_tuit_pal_cal_params)
        format.html { redirect_to @tiene_tuit_pal_cal, notice: 'Tiene tuit pal cal was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiene_tuit_pal_cal }
      else
        format.html { render :edit }
        format.json { render json: @tiene_tuit_pal_cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiene_tuit_pal_cals/1
  # DELETE /tiene_tuit_pal_cals/1.json
  def destroy
    @tiene_tuit_pal_cal.destroy
    respond_to do |format|
      format.html { redirect_to tiene_tuit_pal_cals_url, notice: 'Tiene tuit pal cal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiene_tuit_pal_cal
      @tiene_tuit_pal_cal = TieneTuitPalCal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiene_tuit_pal_cal_params
      params.require(:tiene_tuit_pal_cal).permit(:tw_palCal_id)
    end
end
