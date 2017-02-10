class ConflictsController < ApplicationController
  before_action :set_conflict, only: [:show, :update, :destroy]

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

  # PATCH/PUT /conflicts/1
  def update
    if @conflict.update(conflict_params)
      render json: @conflict
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
      # params.require(:conflict).permit(:reason, :strict)
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
