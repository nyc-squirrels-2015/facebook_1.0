class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_url, null: false
      t.string :name
      t.belongs_to :category
    end
  end
end
