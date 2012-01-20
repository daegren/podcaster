class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :name
      t.datetime :pubdate
      t.text :description

      t.timestamps
    end
  end
end
