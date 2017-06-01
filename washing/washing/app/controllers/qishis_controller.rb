class QishisController < ApplicationController
  before_action :set_qishi, only: [:show, :edit, :update, :destroy]

  # GET /qishis
  # GET /qishis.json
  def index
    @qishis = Qishi.all
  end


   
 

  # GET /qishis/1
  # GET /qishis/1.json
  def show
  end

  # GET /qishis/new
  def new
    @qishi = Qishi.new
  end

  # GET /qishis/1/edit
  def edit
  end

  # POST /qishis
  # POST /qishis.json
  def create
    @qishi = Qishi.new(qishi_params)

    respond_to do |format|
      if @qishi.save
        format.html { redirect_to @qishi, notice: 'Qishi was successfully created.' }
        format.json { render :show, status: :created, location: @qishi }
      else
        format.html { render :new }
        format.json { render json: @qishi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qishis/1
  # PATCH/PUT /qishis/1.json
  def update
    respond_to do |format|
      if @qishi.update(qishi_params)
        format.html { redirect_to @qishi, notice: 'Qishi was successfully updated.' }
        format.json { render :show, status: :ok, location: @qishi }
      else
        format.html { render :edit }
        format.json { render json: @qishi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qishis/1
  # DELETE /qishis/1.json
  def destroy
    @qishi.destroy
    respond_to do |format|
      format.html { redirect_to qishis_url, notice: 'Qishi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qishi
      @qishi = Qishi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qishi_params
      params.require(:qishi).permit(:phone, :order_id, :salary)
    end
end
