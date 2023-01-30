class SubcategoriasController < ApplicationController
  def subcategoria
    @subcategoria = Subcategoria.all
  end

  def show
    @subcategoria = Subcategoria.find(params[:id])
  end

  def new
    @subcategoria = Subcategoria.new
  end

  def create
    @subcategoria = Subcategoria.new(subcategoria_params)
    if @subcategoria.save
      redirect_to @subcategoria
    else
      render 'new'
    end
  end

  def edit
    @subcategoria = Subcategoria.find(params[:id])
  end

  def update
    @subcategoria = Subcategoria.find(params[:id])
    if @subcategoria.update(subcategoria_params)
      redirect_to @subcategoria
    else
      render 'edit'
    end
  end

  def destroy
    @subcategoria = Subcategoria.find(subcategoria[:id])
    @subcategoria.destroy
    redirect_to subcategoria_path
  end

  # private
  #   def subcategoria_params
  #     params.require(:subcategoria).permit(:field1, :field2, ...)
  #   end
end

