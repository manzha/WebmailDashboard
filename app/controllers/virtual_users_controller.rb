class VirtualUsersController < ApplicationController
  before_action :set_virtual_user, only: [:show, :edit, :update, :destroy]

  # GET /virtual_users
  # GET /virtual_users.json
  def index
    @virtual_users = VirtualUser.all
  end

  # GET /virtual_users/1
  # GET /virtual_users/1.json
  def show
  end

  # GET /virtual_users/new
  def new
    @virtual_user = VirtualUser.new
  end

  # GET /virtual_users/1/edit
  def edit
  end

  # POST /virtual_users
  # POST /virtual_users.json
  def create
    @virtual_user = VirtualUser.new(virtual_user_params)

    respond_to do |format|
      if @virtual_user.save
        format.html { redirect_to @virtual_user, notice: 'Virtual user was successfully created.' }
        format.json { render :show, status: :created, location: @virtual_user }
      else
        format.html { render :new }
        format.json { render json: @virtual_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /virtual_users/1
  # PATCH/PUT /virtual_users/1.json
  def update
    respond_to do |format|
      if @virtual_user.update(virtual_user_params)
        format.html { redirect_to @virtual_user, notice: 'Virtual user was successfully updated.' }
        format.json { render :show, status: :ok, location: @virtual_user }
      else
        format.html { render :edit }
        format.json { render json: @virtual_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_users/1
  # DELETE /virtual_users/1.json
  def destroy
    @virtual_user.destroy
    respond_to do |format|
      format.html { redirect_to virtual_users_url, notice: 'Virtual user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virtual_user
      @virtual_user = VirtualUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def virtual_user_params
      params.require(:virtual_user).permit(:virtual_domain_id, :password, :email)
    end
end
