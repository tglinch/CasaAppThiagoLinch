class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :homework
      t.text :description
      t.time :hour

      t.timestamps
    end
  end
end
