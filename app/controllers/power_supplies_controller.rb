class PowerSuppliesController < ApplicationController
  before_action :set_power_supply, only: [:show, :update, :destroy]

  # GET /power_supplies
  def index
    render json: PowerSupply.all, include: ['property_list', 'fan']
  end

  # GET /power_supplies/1
  def show
    render json: @power_supply, include: ['property_list', 'fan']
  end

  # POST /power_supplies
  def create
    @power_supply = PowerSupply.new(power_supply_params)

    if @power_supply.save
      render json: @power_supply, status: :created, location: @power_supply
    else
      render json: @power_supply.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /power_supplies/1
  def update
    if @power_supply.update(power_supply_params)
      render json: @power_supply
    else
      render json: @power_supply.errors, status: :unprocessable_entity
    end
  end

  # DELETE /power_supplies/1
  def destroy
    @power_supply.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_supply
      @power_supply = PowerSupply.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def power_supply_params
      # Use temporarily for running Controller tests:
      params.require(:power_supply).permit(
        :form_factor,
        :amps12v,
        :full_modular,
        :semi_modular,
        :efficiency,
        :oem,
        :semipassive,
        :has_fan_switch,
        :quiet,
        :eps_length_cm,
        :pcie8pin_qty,
        :pcie6pin_qty,
        :sata_qty,
        :has_pretty_cables,
        :fan_id
      )

      # Doesn't allow tests to run correctly, but needed for Ember:
      # ActiveModelSerializers::Deserialization.jsonapi_parse(params)

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
