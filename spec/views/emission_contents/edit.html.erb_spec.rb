require 'rails_helper'

RSpec.describe 'emission_contents/edit', type: :view do
  let(:emission_content) do
    EmissionContent.create!(
      title: 'MyString',
      description: 'MyText',
      content: nil,
      user: nil,
      emission: nil
    )
  end

  before(:each) do
    assign(:emission_content, emission_content)
  end

  it 'renders the edit emission_content form' do
    render

    assert_select 'form[action=?][method=?]', emission_content_path(emission_content), 'post' do
      assert_select 'input[name=?]', 'emission_content[title]'

      assert_select 'textarea[name=?]', 'emission_content[description]'

      assert_select 'input[name=?]', 'emission_content[content]'

      assert_select 'input[name=?]', 'emission_content[user_id]'

      assert_select 'input[name=?]', 'emission_content[emission_id]'
    end
  end
end
