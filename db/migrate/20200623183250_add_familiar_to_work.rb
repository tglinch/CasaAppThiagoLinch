class AddFamiliarToWork < ActiveRecord::Migration[6.0]
  def change
    add_reference :works, :familiar, null: false, foreign_key: true
  end
end
