class VirtualAliasesController < ApplicationController
  before_action :set_virtual_alias, only: [:show, :edit, :update, :destroy]

  # GET /virtual_aliases
  # GET /virtual_aliases.json
  def index
    @virtual_aliases = VirtualAlias.all
  end

  # GET /virtual_aliases/1
  # GET /virtual_aliases/1.json
  def show
  end

  # GET /virtual_aliases/new
  def new
    @virtual_alias = VirtualAlias.new
  end

  # GET /virtual_aliases/1/edit
  def edit
  end

  # POST /virtual_aliases
  # POST /virtual_aliases.json
  def create
    @virtual_alias = VirtualAlias.new(virtual_alias_params)

    respond_to do |format|
      if @virtual_alias.save
        format.html { redirect_to @virtual_alias, notice: 'Virtual alias was successfully created.' }
        format.json { render :show, status: :created, location: @virtual_alias }
      else
        format.html { render :new }
        format.json { render json: @virtual_alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /virtual_aliases/1
  # PATCH/PUT /virtual_aliases/1.json
  def update
    respond_to do |format|
      if @virtual_alias.update(virtual_alias_params)
        format.html { redirect_to @virtual_alias, notice: 'Virtual alias was successfully updated.' }
        format.json { render :show, status: :ok, location: @virtual_alias }
      else
        format.html { render :edit }
        format.json { render json: @virtual_alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_aliases/1
  # DELETE /virtual_aliases/1.json
  def destroy
    @virtual_alias.destroy
    respond_to do |format|
      format.html { redirect_to virtual_aliases_url, notice: 'Virtual alias was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virtual_alias
      @virtual_alias = VirtualAlias.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def virtual_alias_params
      params.require(:virtual_alias).permit(:virtual_domain_id, :source, :destination)
    end
end
