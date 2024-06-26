require 'rails_helper'

RSpec.describe 'emission_contents/index', type: :view do
  before(:each) do
    assign(:emission_contents, [
             EmissionContent.create!(
               title: 'Title',
               description: 'MyText',
               content: nil,
               user: nil,
               emission: nil
             ),
             EmissionContent.create!(
               title: 'Title',
               description: 'MyText',
               content: nil,
               user: nil,
               emission: nil
             )
           ])
  end

  it 'renders a list of emission_contents' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
