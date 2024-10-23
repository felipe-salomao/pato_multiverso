class Api::NavesController < Api::ApplicationController
  before_action :set_nave, only: %i[ show ]

  def index
    naves = Nave.all

    render json: naves, each_serializer: Api::NaveSerializer, status: :ok
  end

  def show
  end

  def create
    Nave.create!(permitted_params)

    head :created
  end

  private

  def set_nave
    @nave = Nave.find(params[:id])
  end

  def permitted_params
    params.permit(:tamanho, :cor, :local, :armamentos, :combustivel, :tripulantes, :saude_tripulantes, :grau_avaria, :potencial, :periculosidade)
  end
end
