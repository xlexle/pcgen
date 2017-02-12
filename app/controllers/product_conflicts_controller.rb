class ProductConflictsController < ApplicationController
  before_action :set_product_conflict, only: [:show, :update, :destroy]

  # GET /product_conflicts
  def index
    render json: ProductConflict.all, include: ['product', 'conflict']
  end

  # GET /product_conflicts/1
  def show
    render json: @product_conflict, include: ['product', 'conflict']
  end

  # POST /product_conflicts
  def create
    @product_conflict = ProductConflict.new(product_conflict_params)

    if @product_conflict.save
      render json: @product_conflict, status: :created, location: @product_conflict
    else
      render json: @product_conflict.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_conflicts/1
  def update
    if @product_conflict.update(product_conflict_params)
      render json: @product_conflict
    else
      render json: @product_conflict.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_conflicts/1
  def destroy
    @product_conflict.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_conflict
      @product_conflict = ProductConflict.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_conflict_params
      # Use temporarily for running Controller tests:
      params.require(:product_conflict).permit(:product_id, :product_type, :conflict_id)

      # Doesn't allow tests to run correctly, but needed for Ember:
      # res = ActiveModelSerializers::Deserialization.jsonapi_parse(params, polymorphic: [:product])
      # res[:product_type] = res[:product_type].singularize.capitalize
      # res

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
