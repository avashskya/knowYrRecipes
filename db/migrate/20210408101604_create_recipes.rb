class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :ingredients, null: false
      t.text :instruction, null: false
      t.belongs_to :user, null: false, foreign_key: true
      t.string :image, default: 'https://raw.githubusercontent.com/avashskya/knowYrRecipes/master/app/assets/images/recipe.jpg'

      t.timestamps
    end
  end
end
