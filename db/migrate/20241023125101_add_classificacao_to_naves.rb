class AddClassificacaoToNaves < ActiveRecord::Migration[6.1]
  def change
    add_column :naves, :classificacao, :string
  end
end
