class Naves::Classificar
  attr_accessor :nave

  def initialize(nave)
    @nave = nave
  end

  def execute
    nave.update!(classificacao: verificar_nave)
  end

  private

  def verificar_nave
    return Nave::JOIA_TECNOLOGICA if JSON.parse(nave.potencial).count > 2 && (nave.grande? || nave.colossal?)
    return Nave::AMEACA_POTENCIAL if nave.armamentos.present? && (nave.alto? || nave.severo?)
    return Nave::FONTE_ENERGIA if JSON.parse(nave.potencial).count > 2 && (nave.gelatina_quantica? || nave.chiclete_estelar?)
    return Nave::EXPLOSAO_COSMICA if (nave.muito_destruida? || nave.parcialmente_destruida?) && !%w[atlantico pacifico indico artico].include?(nave.local)
    return Nave::REFUGIO_ALIENIGENA if nave.tripulantes >= 5 && nave.capenga?
    return Nave::ARSENAL_ALIENIGENA if nave.fuzil? || nave.escopeta? || nave.raio_laser?

    Nave::SUCATA_ESPACIAL
  end
end
