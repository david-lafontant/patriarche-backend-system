require 'rails_helper'

RSpec.describe 'emissions/show', type: :view do
  before(:each) do
    assign(:emission, Emission.create!(
                        title: 'Title',
                        description: 'MyText',
                        poster: nil,
                        user: nil
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
