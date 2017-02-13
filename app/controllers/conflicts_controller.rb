class ConflictsController < ApplicationController
  before_action :set_conflict, only: [:show, :destroy]

  # GET /conflicts
  def index
    render json: Conflict.all
  end

  # GET /conflicts/1
  def show
    render json: @conflict
  end

  # POST /conflicts
  def create
    @conflict = Conflict.new(conflict_params)

    if @conflict.save
      render json: @conflict, status: :created, location: @conflict
    else
      render json: @conflict.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conflicts/1
  def destroy
    @conflict.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conflict
      @conflict = Conflict.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def conflict_params
      # Use temporarily for running Controller tests:
      params.require(:conflict).permit(:reason, :strict)

      # Doesn't allow tests to run correctly, but needed for Ember:
      # ActiveModelSerializers::Deserialization.jsonapi_parse(params)

      # whitelisting, e.g.:
      # ActiveModelSerializers::Deserialization .jsonapi_parse(
      #   document, only: [:title, :date, :author], keys: { date: :published_at }, polymorphic: [:author]
      # )
    end
end
