require 'rails_helper'

RSpec.describe 'media/show', type: :view do
  before(:each) do
    assign(:medium, Medium.create!(
                      title: 'Title',
                      description: 'MyText',
                      content: nil,
                      user: nil,
                      emission: nil
                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
