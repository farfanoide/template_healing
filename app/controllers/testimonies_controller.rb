class TestimoniesController < ApplicationController
  before_action :set_testimony, only: [:show, :edit, :update, :destroy]

  # GET /testimonies
  def index
    @testimonies = Testimony.all
  end

  # GET /testimonies/1
  def show
  end

  # GET /testimonies/new
  def new
    @testimony = Testimony.new
  end

  # GET /testimonies/1/edit
  def edit
  end

  # POST /testimonies
  def create
    @testimony = Testimony.new(testimony_params)

    respond_to do |format|
      if @testimony.save
        format.html { redirect_to testimonies_url, notice: t(:'testimonies.create.success') }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /testimonies/1
  def update
    respond_to do |format|
      if @testimony.update(testimony_params)
        format.html { redirect_to testimonies_url, notice: t(:'testimonies.update.success')}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /testimonies/1
  def destroy
    @testimony.destroy
    respond_to do |format|
      format.html { redirect_to testimonies_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimony
      @testimony = Testimony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimony_params
      params.require(:testimony).permit(:person, :occupation, :content)
    end
end
