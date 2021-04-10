ActiveRecord::Schema.define(version: 20_210_408_101_604) do
  create_table 'punches', force: :cascade do |t|
    t.integer 'punchable_id', null: false
    t.string 'punchable_type', limit: 20, null: false
    t.datetime 'starts_at', null: false
    t.datetime 'ends_at', null: false
    t.datetime 'average_time', null: false
    t.integer 'hits', default: 1, null: false
    t.index ['average_time'], name: 'index_punches_on_average_time'
    t.index %w[punchable_type punchable_id], name: 'punchable_index'
  end

  create_table 'recipes', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'ingredients', null: false
    t.text 'instruction', null: false
    t.integer 'user_id', null: false
    t.string 'image', default: 'https://raw.githubusercontent.com/avashskya/knowYrRecipes/master/app/assets/images/recipe.jpg'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_recipes_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'email', null: false
    t.string 'encrypted_password', limit: 128, null: false
    t.string 'confirmation_token', limit: 128
    t.string 'remember_token', limit: 128, null: false
    t.index ['email'], name: 'index_users_on_email'
    t.index ['remember_token'], name: 'index_users_on_remember_token'
  end

  add_foreign_key 'recipes', 'users'
end
