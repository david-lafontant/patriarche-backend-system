require 'rails_helper'

RSpec.describe 'emissions/edit', type: :view do
  let(:emission) do
    Emission.create!(
      title: 'MyString',
      description: 'MyText',
      poster: nil,
      user: nil
    )
  end

  before(:each) do
    assign(:emission, emission)
  end

  it 'renders the edit emission form' do
    render

    assert_select 'form[action=?][method=?]', emission_path(emission), 'post' do
      assert_select 'input[name=?]', 'emission[title]'

      assert_select 'textarea[name=?]', 'emission[description]'

      assert_select 'input[name=?]', 'emission[poster]'

      assert_select 'input[name=?]', 'emission[user_id]'
    end
  end
end
