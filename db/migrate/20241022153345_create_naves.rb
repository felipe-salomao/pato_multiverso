class CreateNaves < ActiveRecord::Migration[6.1]
  def change
    create_table :naves do |t|
      t.integer :tamanho
      t.integer :cor
      t.integer :local
      t.integer :armamentos
      t.integer :combustivel
      t.bigint :tripulantes
      t.integer :saude_tripulantes
      t.integer :grau_avaria
      t.text :potencial
      t.integer :periculosidade

      t.timestamps
    end
  end
end
