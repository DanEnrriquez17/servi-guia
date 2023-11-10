class ProveedorsController < ApplicationController
  def index
    @proveedors = Proveedor.all
    if params[:query].present?
      sql_subquery = <<~SQL
        proveedors.nombre @@ :query
        OR proveedors.tipo_de_servicio @@ :query
        OR resenas.reseña @@ :query
      SQL
      @proveedors = @proveedors.joins(:resenas).where(sql_subquery, query: params[:query])
    end
  end

  def show
    @proveedor = Proveedor.find(params[:id])
    @resenas = Resenas.find(params[:id])
  end

  private

  def proveedor_params
    params.require(:proveedor).permit(:avatar, :resenas)
  end
end
