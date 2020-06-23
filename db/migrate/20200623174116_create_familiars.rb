class CreateFamiliars < ActiveRecord::Migration[6.0]
  def change
    create_table :familiars do |t|
      t.string :name

      t.timestamps
    end
  end
end
