require 'rails_helper'

RSpec.describe 'emissions/index', type: :view do
  before(:each) do
    assign(:emissions, [
             Emission.create!(
               title: 'Title',
               description: 'MyText',
               poster: nil,
               user: nil
             ),
             Emission.create!(
               title: 'Title',
               description: 'MyText',
               poster: nil,
               user: nil
             )
           ])
  end

  it 'renders a list of emissions' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
