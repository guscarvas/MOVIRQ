class AtleticasController < ApplicationController
  before_action :set_atletica, only: [:show, :edit, :update, :destroy]

  # GET /atleticas
  # GET /atleticas.json
  def index
    @atleticas = Atletica.all
  end

  # GET /atleticas/1
  # GET /atleticas/1.json
  def show
  end

  # GET /atleticas/new
  def new
    @atletica = Atletica.new
  end

  # GET /atleticas/1/edit
  def edit
  end

  # POST /atleticas
  # POST /atleticas.json
  def create
    @atletica = Atletica.new(atletica_params)

    respond_to do |format|
      if @atletica.save
        format.html { redirect_to @atletica, notice: 'Atletica foi criada com sucesso' }
        format.json { render :show, status: :created, location: @atletica }
      else
        format.html { render :new }
        format.json { render json: @atletica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atleticas/1
  # PATCH/PUT /atleticas/1.json
  def update
    respond_to do |format|
      if @atletica.update(atletica_params)
        format.html { redirect_to @atletica, notice: 'Atletica foi atualizada com sucesso' }
        format.json { render :show, status: :ok, location: @atletica }
      else
        format.html { render :edit }
        format.json { render json: @atletica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atleticas/1
  # DELETE /atleticas/1.json
  def destroy
    @atletica.destroy
    respond_to do |format|
      format.html { redirect_to atleticas_url, notice: 'Atletica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atletica
      @atletica = Atletica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atletica_params
      params.require(:atletica).permit(:name, :email, :password)
    end
end
