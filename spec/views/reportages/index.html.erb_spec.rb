require 'rails_helper'

RSpec.describe 'reportages/index', type: :view do
  before(:each) do
    assign(:reportages, [
             Reportage.create!(
               title: 'Title',
               description: 'MyText',
               contents: nil,
               user: nil
             ),
             Reportage.create!(
               title: 'Title',
               description: 'MyText',
               contents: nil,
               user: nil
             )
           ])
  end

  it 'renders a list of reportages' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end