class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)
    if @produto.save
      redirect_to @produto
    else
      render 'new'
    end
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def update
    @produto = Produto.find(params[:id])

    if @produto.update(produto_params)
      redirect_to @produto
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @produto = Produto.find
    @produto.destroy
    redirect_to produto_path
  end

  private
    def produto_params
      params.require(:produto).permit(:codBarra, :name, :descricao, :status, :subcategorias_id, :preco, :imagem)
    end
end



