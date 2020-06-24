class ShopListsController < ApplicationController
  before_action :set_shop_list, only: [:show, :edit, :update, :destroy]

  # GET /shop_lists
  # GET /shop_lists.json
  def index
    @shop_lists = ShopList.all
  end

  # GET /shop_lists/1
  # GET /shop_lists/1.json
  def show
  end

  # GET /shop_lists/new
  def new
    @shop_list = ShopList.new
  end

  # GET /shop_lists/1/edit
  def edit
  end

  # POST /shop_lists
  # POST /shop_lists.json
  def create
    @shop_list = ShopList.new(shop_list_params)

    respond_to do |format|
      if @shop_list.save
        format.html { redirect_to @shop_list, notice: 'Shop list was successfully created.' }
        format.json { render :show, status: :created, location: @shop_list }
      else
        format.html { render :new }
        format.json { render json: @shop_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_lists/1
  # PATCH/PUT /shop_lists/1.json
  def update
    respond_to do |format|
      if @shop_list.update(shop_list_params)
        format.html { redirect_to @shop_list, notice: 'Shop list was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_list }
      else
        format.html { render :edit }
        format.json { render json: @shop_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_lists/1
  # DELETE /shop_lists/1.json
  def destroy
    @shop_list.destroy
    respond_to do |format|
      format.html { redirect_to shop_lists_url, notice: 'Shop list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_list
      @shop_list = ShopList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shop_list_params
      params.require(:shop_list).permit(:item, :qtd)
    end
end
