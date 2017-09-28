class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.belongs_to :country, index: true, foreign_key: true
      t.string :address

      t.timestamps null: false
    end
  end
end
