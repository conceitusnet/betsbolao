require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select   "a[href=?]", root_path, count: 2
    assert_select   "a[href=?]", ajuda_path
    assert_select   "a[href=?]", regra_path
    assert_select   "a[href=?]", contato_path
    get contato_path
    assert_select "title", full_title("Contatos")
  end
end
