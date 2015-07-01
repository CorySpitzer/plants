class MakePlantTable < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image_url
    end
  end
end
