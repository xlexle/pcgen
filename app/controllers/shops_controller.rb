class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :update, :destroy]

  # GET /shops
  def index
    render json: Shop.all, include: ['service']
  end

  # GET /shops/1
  def show
    render json: @shop, include: ['service']
  end

  # POST /shops
  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      render json: @shop, status: :created, location: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shops/1
  def update
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shops/1
  def destroy
    @shop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shop_params
      # Use temporarily for running Controller tests:
      params.require(:shop).permit(:name, :description, :url)

      # Doesn't allow tests to run correctly, but needed for Ember:
      # ActiveModelSerializers::Deserialization.jsonapi_parse(params)

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
