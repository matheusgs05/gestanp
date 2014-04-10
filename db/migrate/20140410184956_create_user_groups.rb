class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
