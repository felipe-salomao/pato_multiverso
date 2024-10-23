class Nave < ApplicationRecord
  include NaveConstants

  validates :tamanho, :cor, :combustivel, :periculosidade, :grau_avaria, :local, :potencial, presence: true

  enum tamanho: { pequena: 0, media: 1, grande: 2, colossal: 3 }

  enum cor: { vermelha: 0, laranja: 1, amarela: 2, verde: 3, azul: 4, anil: 5, violeta: 6 }

  enum armamentos: { fuzil: 0, pistola: 1, estilingue: 2, escopeta: 3, faca: 4, raio_laser: 5 }

  enum combustivel: { chuva: 0, tinta_polvo: 1, gelatina_quantica: 2, chiclete_estelar: 3 }

  enum saude_tripulantes: { arrasta: 0, capenga: 1, bacana: 2, show: 3 }

  enum periculosidade: { baixo: 0, medio: 1, alto: 2, severo: 3 }

  enum grau_avaria: { 
    perda_total: 0, muito_destruida: 1, parcialmente_destruida: 2,
    intacta: 3, sem_avarias: 4
  }

  enum local: {
    america: 0, africa: 1, europa: 2, asia: 3, oceania: 4, antartida: 5,
    atlantico: 6, pacifico: 7, indico: 8, artico: 9
  }
end
