require 'test_helper'

class PublicsControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get publics_home_url
    assert_response :success
  end

  test 'should get about' do
    get publics_about_url
    assert_response :success
  end

  test 'should get articles' do
    get publics_articles_url
    assert_response :success
  end

  test 'should get newz' do
    get publics_newz_url
    assert_response :success
  end
end
