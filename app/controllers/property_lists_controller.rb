class PropertyListsController < ApplicationController
  before_action :set_property_list, only: [:show, :update, :destroy]

  # GET /property_lists
  def index
    render json: PropertyList.all
  end

  # GET /property_lists/1
  def show
    render json: @property_list
  end

  # POST /property_lists
  def create
    @property_list = PropertyList.new(property_list_params)

    if @property_list.save
      render json: @property_list, status: :created, location: @property_list
    else
      render json: @property_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /property_lists/1
  def update
    if @property_list.update(property_list_params)
      render json: @property_list
    else
      render json: @property_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /property_lists/1
  def destroy
    @property_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_list
      @property_list = PropertyList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_list_params
      # Use temporarily for running Controller tests:
      params.require(:property_list).permit(:listed, :quality, :product_name, :sku, :brand, :prices_url, :specs_url, :description, :warranty, :length_mm, :width_mm, :height_mm, :primary_colors, :secondary_colors, :led_color, :product_id, :product_type)

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
