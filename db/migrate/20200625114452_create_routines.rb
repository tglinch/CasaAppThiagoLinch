class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :dom
      t.string :seg
      t.string :ter
      t.string :qua
      t.string :qui
      t.string :sex
      t.string :sab

      t.timestamps
    end
  end
end
