class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nombre
      t.date :fecha_alta
      t.integer :morosidad

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
