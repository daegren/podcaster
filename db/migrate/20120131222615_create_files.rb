class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :name
      t.string :location
      t.float :size
      t.time :length
      t.string :type

      t.timestamps
    end
  end
end
