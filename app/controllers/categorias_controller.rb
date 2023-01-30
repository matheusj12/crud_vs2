class CategoriasController < ApplicationController
  def categoria
    @categoria = Categoria.all
  end

  def show
    @categoria = Categoria.find(params[:id])
  end

  def new
    @categoria = Categoria.new
  end

  def create
    @categoria = Categoria.new(categoria_params)
    if @categoria.save
      redirect_to @categoria
    else
      render 'new'
    end
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def update
    @categoria = Categoria.find(params[:id])
    if @categoria.update(categoria_params)
      redirect_to @categoria
    else
      render 'edit'
    end
  end

  def destroy
    @categoria = Produto.find(categoria[:id])
    @categoria.destroy
    redirect_to categoria_path
  end

  # private
  #   def categoria_params
  #     params.require(:categoria).permit(:field1, :field2, ...)
  #   end
end

