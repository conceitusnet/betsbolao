require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  	def setup
  		@base_title = "BetsBolão sites de apostas do brasileirão"
  	end	

  #test "should get root" do
   # get FILL_IN
   # assert_response FILL_IN
  #end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get ajuda" do
    get static_pages_ajuda_url
    assert_response :success
    assert_select "title", "Ajuda | #{@base_title}"
  end

  test "should get sobre" do
  	get static_pages_sobre_url
  	assert_response :success
  	assert_select "title", "Sobre | #{@base_title}"
  end

end
