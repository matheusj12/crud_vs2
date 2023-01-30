require "test_helper"

class ProdutoControllerTest < ActionDispatch::IntegrationTest
  test "should get Estoque" do
    get produto_Estoque_url
    assert_response :success
  end

  test "should get Subcategoria" do
    get produto_Subcategoria_url
    assert_response :success
  end

  test "should get Categoria" do
    get produto_Categoria_url
    assert_response :success
  end
end
