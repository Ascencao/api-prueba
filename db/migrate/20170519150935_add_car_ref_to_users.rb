class AddCarRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :car, foreign_key: true
  end
end
