class IdiomsController < ApplicationController
  before_action :set_idiom, only: [:show, :edit, :update, :destroy]

  # GET /idioms
  # GET /idioms.json
  def index
    @idioms = Idiom.all
  end

  # GET /idioms/1
  # GET /idioms/1.json
  def show
  end

  # GET /idioms/new
  def new
    @idiom = Idiom.new
  end

  # GET /idioms/1/edit
  def edit
  end

  # POST /idioms
  # POST /idioms.json
  def create
    @idiom = Idiom.new(idiom_params)

    respond_to do |format|
      if @idiom.save
        format.html { redirect_to @idiom, notice: 'Idiom was successfully created.' }
        format.json { render :show, status: :created, location: @idiom }
      else
        format.html { render :new }
        format.json { render json: @idiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idioms/1
  # PATCH/PUT /idioms/1.json
  def update
    respond_to do |format|
      if @idiom.update(idiom_params)
        format.html { redirect_to @idiom, notice: 'Idiom was successfully updated.' }
        format.json { render :show, status: :ok, location: @idiom }
      else
        format.html { render :edit }
        format.json { render json: @idiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idioms/1
  # DELETE /idioms/1.json
  def destroy
    @idiom.destroy
    respond_to do |format|
      format.html { redirect_to idioms_url, notice: 'Idiom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idiom
      @idiom = Idiom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idiom_params
      params.require(:idiom).permit(:name, :Country_id)
    end
end
