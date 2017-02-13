class FansController < ApplicationController
  before_action :set_fan, only: [:show, :update, :destroy]

  # GET /fans
  def index
    render json: Fan.all, include: ['property_list']
  end

  # GET /fans/1
  def show
    render json: @fan, include: ['property_list']
  end

  # POST /fans
  def create
    @fan = Fan.new(fan_params)

    if @fan.save
      render json: @fan, status: :created, location: @fan
    else
      render json: @fan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fans/1
  def update
    if @fan.update(fan_params)
      render json: @fan
    else
      render json: @fan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fans/1
  def destroy
    @fan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fan
      @fan = Fan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fan_params
      # Use temporarily for running Controller tests:
      params.require(:fan).permit(
        :bearing,
        :min_rpm,
        :max_rpm,
        :starting_voltage,
        :max_amps,
        :mtbf_hours,
        :has_pwm,
        :high_pressure,
        :quiet,
        :thickness_mm
      )

      # Doesn't allow tests to run correctly, but needed for Ember:
      # ActiveModelSerializers::Deserialization.jsonapi_parse(params)

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
