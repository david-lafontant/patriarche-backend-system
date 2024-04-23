require 'rails_helper'

RSpec.describe "reportages/edit", type: :view do
  let(:reportage) {
    Reportage.create!(
      title: "MyString",
      description: "MyText",
      contents: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:reportage, reportage)
  end

  it "renders the edit reportage form" do
    render

    assert_select "form[action=?][method=?]", reportage_path(reportage), "post" do

      assert_select "input[name=?]", "reportage[title]"

      assert_select "textarea[name=?]", "reportage[description]"

      assert_select "input[name=?]", "reportage[contents]"

      assert_select "input[name=?]", "reportage[user_id]"
    end
  end
end
