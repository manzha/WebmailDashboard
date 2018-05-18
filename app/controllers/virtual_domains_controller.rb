class VirtualDomainsController < ApplicationController
  before_action :set_virtual_domain, only: [:show, :edit, :update, :destroy]

  # GET /virtual_domains
  # GET /virtual_domains.json
  def index
    @virtual_domains = VirtualDomain.all
  end

  # GET /virtual_domains/1
  # GET /virtual_domains/1.json
  def show
  end

  # GET /virtual_domains/new
  def new
    @virtual_domain = VirtualDomain.new
  end

  # GET /virtual_domains/1/edit
  def edit
  end

  # POST /virtual_domains
  # POST /virtual_domains.json
  def create
    @virtual_domain = VirtualDomain.new(virtual_domain_params)

    respond_to do |format|
      if @virtual_domain.save
        format.html { redirect_to @virtual_domain, notice: 'Virtual domain was successfully created.' }
        format.json { render :show, status: :created, location: @virtual_domain }
      else
        format.html { render :new }
        format.json { render json: @virtual_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /virtual_domains/1
  # PATCH/PUT /virtual_domains/1.json
  def update
    respond_to do |format|
      if @virtual_domain.update(virtual_domain_params)
        format.html { redirect_to @virtual_domain, notice: 'Virtual domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @virtual_domain }
      else
        format.html { render :edit }
        format.json { render json: @virtual_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_domains/1
  # DELETE /virtual_domains/1.json
  def destroy
    @virtual_domain.destroy
    respond_to do |format|
      format.html { redirect_to virtual_domains_url, notice: 'Virtual domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virtual_domain
      @virtual_domain = VirtualDomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def virtual_domain_params
      params.require(:virtual_domain).permit(:name)
    end
end
