class EstoquesController < ApplicationController
  def estoque
    @estoque = Estoque.all
  end

  def show
    @estoque = Estoque.find(params[:id])
  end

  def new
    @estoque = Estoque.new
  end

  def create
    @estoque = Estoque.new(estoque_params)
    if @estoque.save
      redirect_to @estoque
    else
      render 'new'
    end
  end

  def edit
    @estoque = Estoque.find(params[:id])
  end

  def update
    @estoque = Estoque.find(params[:id])
    if @estoque.update(estoque_params)
      redirect_to @estoque
    else
      render 'edit'
    end
  end

  def destroy
    @estoque = Estoque.find(estoque[:id])
    @estoque.destroy
    redirect_to estoque_path
  end

  # private
  #   def estoque_params
  #     params.require(:estoque).permit(:field1, :field2, ...)
  #   end
end

