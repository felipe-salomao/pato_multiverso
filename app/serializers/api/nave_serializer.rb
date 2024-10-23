class Api::NaveSerializer < ActiveModel::Serializer
  attributes :id, :cor, :tamanho, :combustivel, :periculosidade, :grau_avaria, :local, :potencial,
             :armamentos, :tripulantes, :saude_tripulantes

  def potencial
    return if object.potencial.blank?

    JSON.parse(object.potencial)
  end
end
