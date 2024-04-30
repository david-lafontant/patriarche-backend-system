require 'rails_helper'

RSpec.describe 'emission_contents/new', type: :view do
  before(:each) do
    assign(:emission_content, EmissionContent.new(
                                title: 'MyString',
                                description: 'MyText',
                                content: nil,
                                user: nil,
                                emission: nil
                              ))
  end

  it 'renders new emission_content form' do
    render

    assert_select 'form[action=?][method=?]', emission_contents_path, 'post' do
      assert_select 'input[name=?]', 'emission_content[title]'

      assert_select 'textarea[name=?]', 'emission_content[description]'

      assert_select 'input[name=?]', 'emission_content[content]'

      assert_select 'input[name=?]', 'emission_content[user_id]'

      assert_select 'input[name=?]', 'emission_content[emission_id]'
    end
  end
end
