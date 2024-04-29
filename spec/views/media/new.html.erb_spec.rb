require 'rails_helper'

RSpec.describe 'media/new', type: :view do
  before(:each) do
    assign(:medium, Medium.new(
                      title: 'MyString',
                      description: 'MyText',
                      content: nil,
                      user: nil,
                      emission: nil
                    ))
  end

  it 'renders new medium form' do
    render

    assert_select 'form[action=?][method=?]', media_path, 'post' do
      assert_select 'input[name=?]', 'medium[title]'

      assert_select 'textarea[name=?]', 'medium[description]'

      assert_select 'input[name=?]', 'medium[content]'

      assert_select 'input[name=?]', 'medium[user_id]'

      assert_select 'input[name=?]', 'medium[emission_id]'
    end
  end
end
