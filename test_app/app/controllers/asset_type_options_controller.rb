class AssetTypeOptionsController < ApplicationController
  before_action :set_asset_type_option, only: [:show, :edit, :update, :destroy]

  # GET /asset_type_options
  # GET /asset_type_options.json
  def index
    @asset_type_options = AssetTypeOption.all
  end

  # GET /asset_type_options/1
  # GET /asset_type_options/1.json
  def show
  end

  # GET /asset_type_options/new
  def new
    @asset_type_option = AssetTypeOption.new
  end

  # GET /asset_type_options/1/edit
  def edit
  end

  # POST /asset_type_options
  # POST /asset_type_options.json
  def create
    @asset_type_option = AssetTypeOption.new(asset_type_option_params)

    respond_to do |format|
      if @asset_type_option.save
        format.html { redirect_to @asset_type_option, notice: 'Asset type option was successfully created.' }
        format.json { render :show, status: :created, location: @asset_type_option }
      else
        format.html { render :new }
        format.json { render json: @asset_type_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asset_type_options/1
  # PATCH/PUT /asset_type_options/1.json
  def update
    respond_to do |format|
      if @asset_type_option.update(asset_type_option_params)
        format.html { redirect_to @asset_type_option, notice: 'Asset type option was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_type_option }
      else
        format.html { render :edit }
        format.json { render json: @asset_type_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_type_options/1
  # DELETE /asset_type_options/1.json
  def destroy
    @asset_type_option.destroy
    respond_to do |format|
      format.html { redirect_to asset_type_options_url, notice: 'Asset type option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_type_option
      @asset_type_option = AssetTypeOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_type_option_params
      params.require(:asset_type_option).permit(:field_name, :field_type, :asset_type_id)
    end
end
