class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :body
      t.string :ingredients
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
