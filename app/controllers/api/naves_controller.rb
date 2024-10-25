class Api::NavesController < Api::ApplicationController
  attr_accessor :nave

  before_action :set_nave, only: %i[ show ]

  def index
    naves = Nave.all

    render json: naves, each_serializer: Api::NaveSerializer, status: :ok
  end

  def show
    render json: nave, serializer: Api::NaveSerializer, status: :ok
  end

  def create
    nave = Naves::Create.new(permitted_params).execute

    render json: { id: nave.id }, status: :created
  end

  private

  def set_nave
    @nave = Nave.find(params[:id])
  end

  def permitted_params
    params.permit(:tamanho, :cor, :local, :armamentos, :combustivel, :tripulantes, :saude_tripulantes, :grau_avaria, :periculosidade, potencial: [])
  end
end
