require 'rails_helper'

RSpec.describe "emissions/new", type: :view do
  before(:each) do
    assign(:emission, Emission.new(
      title: "MyString",
      description: "MyText",
      poster: nil,
      user: nil
    ))
  end

  it "renders new emission form" do
    render

    assert_select "form[action=?][method=?]", emissions_path, "post" do

      assert_select "input[name=?]", "emission[title]"

      assert_select "textarea[name=?]", "emission[description]"

      assert_select "input[name=?]", "emission[poster]"

      assert_select "input[name=?]", "emission[user_id]"
    end
  end
end
