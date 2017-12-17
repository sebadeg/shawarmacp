class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.boolean :carne
      t.boolean :pollo
      t.boolean :falafel
      t.boolean :mayonesa
      t.boolean :salsa
      t.boolean :humus
      t.boolean :tahini
      t.boolean :yogurt
      t.boolean :lechuga
      t.boolean :tomate
      t.boolean :cebolla
      t.boolean :repollo
      t.boolean :zanahoria
      t.boolean :ciboulette
      t.boolean :aceitunas
      t.boolean :picante
    end
  end
end
