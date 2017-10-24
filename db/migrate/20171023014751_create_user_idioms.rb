class CreateUserIdioms < ActiveRecord::Migration
  def change
    create_table :user_idioms do |t|
      t.references :user, index: true, foreign_key: true
      t.references :idiom, index: true, foreign_key: true
      t.boolean :learn
      t.boolean :teach

      t.timestamps null: false
    end
  end
end
