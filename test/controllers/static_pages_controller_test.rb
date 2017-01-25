require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  	#def setup
  	#	@base_title = "BetsBolão sites de apostas do brasileirão"
  	#end

  #test "should get root" do
   # get FILL_IN
   # assert_response FILL_IN
  #end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "BetsBolão sites de apostas do brasileirão"
  end

  test "should get ajuda" do
    get ajuda_path
    assert_response :success
    assert_select "title", "Ajuda | BetsBolão sites de apostas do brasileirão"
  end

  test "should get regra" do
  	get regra_path
  	assert_response :success
  	assert_select "title", "Regras | BetsBolão sites de apostas do brasileirão"
  end

  test "should get contato" do
    get contato_path
    assert_response :success
    assert_select "title", "Contatos | BetsBolão sites de apostas do brasileirão"
  end

end
