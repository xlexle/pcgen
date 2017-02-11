class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :update, :destroy]

  # GET /sources
  def index
    render json: Source.all
  end

  # GET /sources/1
  def show
    render json: @source
  end

  # POST /sources
  def create
    @source = Source.new(source_params)

    if @source.save
      render json: @source, status: :created, location: @source
    else
      render json: @source.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sources/1
  def update
    if @source.update(source_params)
      render json: @source
    else
      render json: @source.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sources/1
  def destroy
    @source.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source
      @source = Source.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def source_params
      # params.require(:source).permit(:price_eur, :delivery_time_min, :delivery_time_max, :delivery_cost_min, :shop_url, :product_id, :product_type, :shop_id)
      res = ActiveModelSerializers::Deserialization.jsonapi_parse(params, polymorphic: [:product])
      res[:product_type] = res[:product_type].singularize.capitalize
      res
    end
end
