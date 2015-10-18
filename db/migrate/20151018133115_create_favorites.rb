class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :post_id
      t.text :user_id

      t.timestamps null: false
    end
  end
end
