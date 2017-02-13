class ServiceItemsController < ApplicationController
  before_action :set_service_item, only: [:show, :update, :destroy]

  # GET /service_items
  def index
    render json: ServiceItem.all
  end

  # GET /service_items/1
  def show
    render json: @service_item
  end

  # POST /service_items
  def create
    @service_item = ServiceItem.new(service_item_params)

    if @service_item.save
      render json: @service_item, status: :created, location: @service_item
    else
      render json: @service_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_items/1
  def update
    if @service_item.update(service_item_params)
      render json: @service_item
    else
      render json: @service_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_items/1
  def destroy
    @service_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_item
      @service_item = ServiceItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_item_params
      # Use temporarily for running Controller tests:
      params.require(:service_item).permit(:service_name, :description, :price_eur, :shop_id)

      # Doesn't allow tests to run correctly, but needed for Ember:
      # ActiveModelSerializers::Deserialization.jsonapi_parse(params)

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
