class GastospropiedadsController < ApplicationController
  before_action :set_gastospropiedad, only: [:show, :edit, :update, :destroy]

  # GET /gastospropiedads
  # GET /gastospropiedads.json
  def index
    @gastospropiedads = Gastospropiedad.all
  end

  # GET /gastospropiedads/1
  # GET /gastospropiedads/1.json
  def show
  end

  # GET /gastospropiedads/new
  def new
    @gastospropiedad = Gastospropiedad.new
  end

  # GET /gastospropiedads/1/edit
  def edit
  end

  # POST /gastospropiedads
  # POST /gastospropiedads.json
  def create
    @gastospropiedad = Gastospropiedad.new(gastospropiedad_params)

    respond_to do |format|
      if @gastospropiedad.save
        format.html { redirect_to @gastospropiedad, notice: 'Gastospropiedad was successfully created.' }
        format.json { render :show, status: :created, location: @gastospropiedad }
      else
        format.html { render :new }
        format.json { render json: @gastospropiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastospropiedads/1
  # PATCH/PUT /gastospropiedads/1.json
  def update
    respond_to do |format|
      if @gastospropiedad.update(gastospropiedad_params)
        format.html { redirect_to @gastospropiedad, notice: 'Gastospropiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @gastospropiedad }
      else
        format.html { render :edit }
        format.json { render json: @gastospropiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastospropiedads/1
  # DELETE /gastospropiedads/1.json
  def destroy
    @gastospropiedad.destroy
    respond_to do |format|
      format.html { redirect_to gastospropiedads_url, notice: 'Gastospropiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gastospropiedad
      @gastospropiedad = Gastospropiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gastospropiedad_params
      params.require(:gastospropiedad).permit(:anho, :mes, :monto)
    end
end
