require 'rails_helper'

RSpec.describe "reportages/new", type: :view do
  before(:each) do
    assign(:reportage, Reportage.new(
      title: "MyString",
      description: "MyString",
      user: nil
    ))
  end

  it "renders new reportage form" do
    render

    assert_select "form[action=?][method=?]", reportages_path, "post" do

      assert_select "input[name=?]", "reportage[title]"

      assert_select "input[name=?]", "reportage[description]"

      assert_select "input[name=?]", "reportage[user_id]"
    end
  end
end
