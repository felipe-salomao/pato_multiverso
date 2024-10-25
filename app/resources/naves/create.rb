class Naves::Create
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def execute
    nave = Nave.create!(params)

    classificar_nave(nave)

    nave
  end

  private

  def classificar_nave(nave)
    Naves::Classificar.new(nave).execute
  end
end
