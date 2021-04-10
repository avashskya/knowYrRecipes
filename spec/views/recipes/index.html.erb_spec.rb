require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before(:each) do
    assign(:recipes, [
             Recipe.create!(
               name: 'Name',
               ingredients: 'MyText',
               instruction: 'MyText',
               image: 'Image'
             ),
             Recipe.create!(
               name: 'Name',
               ingredients: 'MyText',
               instruction: 'MyText',
               image: 'Image'
             )
           ])
  end

  it 'renders a list of recipes' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Image'.to_s, count: 2
  end
end
