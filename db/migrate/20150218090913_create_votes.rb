class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :photo
      t.belongs_to :user
      t.belongs_to :category
      t.string :like
    end
  end
end
