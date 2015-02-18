class BazingasController < ApplicationController
  before_action :set_bazinga, only: [:show, :edit, :update, :destroy]

  # GET /bazingas
  # GET /bazingas.json
  def index
    @bazingas = Bazinga.all
  end

  # GET /bazingas/1
  # GET /bazingas/1.json
  def show
  end

  # GET /bazingas/new
  def new
    @bazinga = Bazinga.new
  end

  # GET /bazingas/1/edit
  def edit
  end

  # POST /bazingas
  # POST /bazingas.json
  def create
    @bazinga = Bazinga.new(bazinga_params)

    respond_to do |format|
      if @bazinga.save
        format.html { redirect_to @bazinga, notice: 'Bazinga was successfully created.' }
        format.json { render :show, status: :created, location: @bazinga }
      else
        format.html { render :new }
        format.json { render json: @bazinga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bazingas/1
  # PATCH/PUT /bazingas/1.json
  def update
    respond_to do |format|
      if @bazinga.update(bazinga_params)
        format.html { redirect_to @bazinga, notice: 'Bazinga was successfully updated.' }
        format.json { render :show, status: :ok, location: @bazinga }
      else
        format.html { render :edit }
        format.json { render json: @bazinga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bazingas/1
  # DELETE /bazingas/1.json
  def destroy
    @bazinga.destroy
    respond_to do |format|
      format.html { redirect_to bazingas_url, notice: 'Bazinga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bazinga
      @bazinga = Bazinga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bazinga_params
      params.require(:bazinga).permit(:title, :description, :num_followers)
    end
end
