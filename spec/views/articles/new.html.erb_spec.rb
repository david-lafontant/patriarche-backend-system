require 'rails_helper'

RSpec.describe 'articles/new', type: :view do
  before(:each) do
    assign(:article, Article.new(
                       title: 'MyString',
                       subltitle: 'MyString',
                       description: 'MyText',
                       contenu: 'MyText',
                       contents: nil,
                       user: nil
                     ))
  end

  it 'renders new article form' do
    render

    assert_select 'form[action=?][method=?]', articles_path, 'post' do
      assert_select 'input[name=?]', 'article[title]'

      assert_select 'input[name=?]', 'article[subltitle]'

      assert_select 'textarea[name=?]', 'article[description]'

      assert_select 'textarea[name=?]', 'article[contenu]'

      assert_select 'input[name=?]', 'article[contents]'

      assert_select 'input[name=?]', 'article[user_id]'
    end
  end
end
