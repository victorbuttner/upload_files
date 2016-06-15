class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :cpf
      t.string :telefone

      t.timestamps null: false
    end
  end
end
