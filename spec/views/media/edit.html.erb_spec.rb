require 'rails_helper'

RSpec.describe 'media/edit', type: :view do
  let(:medium) do
    Medium.create!(
      title: 'MyString',
      description: 'MyText',
      content: nil,
      user: nil,
      emission: nil
    )
  end

  before(:each) do
    assign(:medium, medium)
  end

  it 'renders the edit medium form' do
    render

    assert_select 'form[action=?][method=?]', medium_path(medium), 'post' do
      assert_select 'input[name=?]', 'medium[title]'

      assert_select 'textarea[name=?]', 'medium[description]'

      assert_select 'input[name=?]', 'medium[content]'

      assert_select 'input[name=?]', 'medium[user_id]'

      assert_select 'input[name=?]', 'medium[emission_id]'
    end
  end
end
