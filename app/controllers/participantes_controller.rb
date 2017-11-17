class ParticipantesController < ApplicationController
  before_action :set_participante, only: [:show, :edit, :update, :destroy]

  # GET /participantes
  # GET /participantes.json
  def index
    @participantes = Participante.all.page params[:page]
  end

  # GET /participantes/1
  # GET /participantes/1.json
  def show
  end

  # GET /participantes/new
  def new
    @participante = Participante.new
  end

  # GET /participantes/1/edit
  def edit
  end

  # POST /participantes
  # POST /participantes.json
  def create
    @participante = Participante.new(participante_params)

    respond_to do |format|
      if @participante.save
        format.html { redirect_to @participante, notice: 'Participante was successfully created.' }
        format.json { render :show, status: :created, location: @participante }
      else
        format.html { render :new }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participantes/1
  # PATCH/PUT /participantes/1.json
  def update
    respond_to do |format|
      if @participante.update(participante_params)
        format.html { redirect_to @participante, notice: 'Participante was successfully updated.' }
        format.json { render :show, status: :ok, location: @participante }
      else
        format.html { render :edit }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participantes/1
  # DELETE /participantes/1.json
  def destroy
    @participante.destroy
    respond_to do |format|
      format.html { redirect_to participantes_url, notice: 'Participante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participante
      @participante = Participante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participante_params
      params.require(:participante).permit(:nome, :matricula, :status, :grupo_id)
    end
end
