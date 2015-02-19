class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.belongs_to :category
      t.string :name, null: false
      t.string :url, null: false
    end
  end
end
