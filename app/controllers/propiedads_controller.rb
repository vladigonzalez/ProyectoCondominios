class PropiedadsController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /propiedads
  # GET /propiedads.json
  def index
    @propiedads = Propiedad.all
  end

  # GET /propiedads/1
  # GET /propiedads/1.json
  def show
    #@propiedad = Propiedad.find(propiedad_params[:id])
  end

  # GET /propiedads/new
  def new
    @propiedad = Propiedad.new
  end

  # GET /propiedads/1/edit
  def edit
  end

  # POST /propiedads
  # POST /propiedads.json
  def create
    @propiedad = Propiedad.new(propiedad_params)
    @propiedad.user = current_user
    respond_to do |format|
      if @propiedad.save
        format.html { redirect_to @propiedad.recinto, notice: 'Propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @propiedad }
      else
        format.html { render :new }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propiedads/1
  # PATCH/PUT /propiedads/1.json
  def update
    respond_to do |format|
      if @propiedad.update(propiedad_params)
        format.html { redirect_to @propiedad, notice: 'Propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @propiedad }
      else
        format.html { render :edit }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propiedads/1
  # DELETE /propiedads/1.jsonrecinto 6
  def destroy
    @propiedad.destroy
    respond_to do |format|
      format.html { redirect_to propiedads_url, notice: 'Propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propiedad
      @propiedad = Propiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propiedad_params
      params.require(:propiedad).permit(:recinto_id, :id_recinto, :direccion, :numero, :departamento, :rol, :mt, :coeficiente, :tipo_propiedad, :torre, :user_id)
    end
end
