class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /services
  def index
    render json: Service.all
  end

  # GET /services/1
  def show
    render json: @service
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      # Use temporarily for running Controller tests:
      params.require(:service).permit(:service_type, :description, :price_eur, :shop_id)

      # Doesn't allow tests to run correctly, but needed for Ember:
      # ActiveModelSerializers::Deserialization.jsonapi_parse(params)

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
