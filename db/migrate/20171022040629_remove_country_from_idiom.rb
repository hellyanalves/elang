class RemoveCountryFromIdiom < ActiveRecord::Migration
  def change
    remove_reference :idioms, :country, index: true, foreign_key: true
  end
end
