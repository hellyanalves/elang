class AddBirthDateToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.date :birth_date,              null: false
    end
  end
end
