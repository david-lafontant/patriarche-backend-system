require 'rails_helper'

RSpec.describe 'media/index', type: :view do
  before(:each) do
    assign(:media, [
             Medium.create!(
               title: 'Title',
               description: 'MyText',
               content: nil,
               user: nil,
               emission: nil
             ),
             Medium.create!(
               title: 'Title',
               description: 'MyText',
               content: nil,
               user: nil,
               emission: nil
             )
           ])
  end

  it 'renders a list of media' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
