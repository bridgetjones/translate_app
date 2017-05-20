class ShopOwnersController < ApplicationController
  before_action :set_shop_owner, only: [:show, :edit, :update, :destroy]

  expose(:original_text) {params[:original_text]}

  # GET /shop_owners
  # GET /shop_owners.json
  def index
    @shop_owners = ShopOwner.all
  end

  # GET /shop_owners/1
  # GET /shop_owners/1.json
  def show
  end

  # GET /shop_owners/new
  def new
    redirect_to dashboard_path if current_shop_owner
    @shop_owner = ShopOwner.new
  end

  # GET /shop_owners/1/edit
  def edit
  end

  def create
    @shop_owner = ShopOwner.new(shop_owner_params)

    respond_to do |format|
      if @shop_owner.save
        session[:shop_owner_id] = @shop_owner.id
        format.html { redirect_to dashboard_path, notice: 'Shop owner was successfully created.' }
        format.json { render :show, status: :created, location: @shop_owner }
      else
        format.html { render :new }
        format.json { render json: @shop_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_owners/1
  # PATCH/PUT /shop_owners/1.json
  def update
    respond_to do |format|
      if @shop_owner.update(shop_owner_params)
        format.html { redirect_to @shop_owner, notice: 'Shop owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_owner }
      else
        format.html { render :edit }
        format.json { render json: @shop_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_owners/1
  # DELETE /shop_owners/1.json
  def destroy
    @shop_owner.destroy
    respond_to do |format|
      format.html { redirect_to shop_owners_url, notice: 'Shop owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_shop_owner
    @shop_owner = ShopOwner.find(params[:id])
  end

  def shop_owner_params
    params.require(:shop_owner).permit(:name, :shop_name, :address, :email, :password, :password_confirmation, :original_text)
  end
end
