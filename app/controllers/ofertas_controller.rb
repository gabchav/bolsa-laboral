class OfertasController < ApplicationController
  before_action :authenticate_empresa!, except: %i[index show search]
  before_action :set_oferta, only: %i[ show edit update destroy ]

  # GET /ofertas or /ofertas.json
  def index
    @ofertas = Oferta.order(:cargo).page(params[:page]).per(2)
  end

  # GET /ofertas/1 or /ofertas/1.json
  def show
  end

  # GET /ofertas/new
  def new
    @oferta = Oferta.new
  end

  def search
    @search = Oferta.find_by("cargo LIKE ?", "%#{params[:query]}%")
  end

  # GET /ofertas/1/edit
  def edit
  end

  # POST /ofertas or /ofertas.json
  def create
    @oferta = Oferta.new(oferta_params)

    respond_to do |format|
      if @oferta.save
        format.html { redirect_to oferta_url(@oferta), notice: "Oferta was successfully created." }
        format.json { render :show, status: :created, location: @oferta }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oferta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofertas/1 or /ofertas/1.json
  def update
    respond_to do |format|
      if @oferta.update(oferta_params)
        format.html { redirect_to oferta_url(@oferta), notice: "Oferta was successfully updated." }
        format.json { render :show, status: :ok, location: @oferta }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oferta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofertas/1 or /ofertas/1.json
  def destroy
    @oferta.destroy

    respond_to do |format|
      format.html { redirect_to ofertas_url, notice: "Oferta was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_oferta
    @oferta = Oferta.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def oferta_params
    params.require(:oferta).permit(:cargo, :descripcion, :cant_vacantes, :salario_min, :salario_max, :fecha_inicio, :modalidad)
  end
end
