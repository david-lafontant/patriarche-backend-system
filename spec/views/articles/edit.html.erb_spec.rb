require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  let(:article) {
    Article.create!(
      title: "MyString",
      subltitle: "MyString",
      description: "MyText",
      contenu: "MyText",
      contents: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:article, article)
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(article), "post" do

      assert_select "input[name=?]", "article[title]"

      assert_select "input[name=?]", "article[subltitle]"

      assert_select "textarea[name=?]", "article[description]"

      assert_select "textarea[name=?]", "article[contenu]"

      assert_select "input[name=?]", "article[contents]"

      assert_select "input[name=?]", "article[user_id]"
    end
  end
end
