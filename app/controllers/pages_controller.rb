class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:show, :index, :home]

  # GET /pages
  def index
    @pages = Page.all
  end

  def home
    @home = "template healing"
  end

  # GET /pages/1
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: t(:'pages.create.success')}
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /pages/1
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: t(:'pages.update.success')}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /pages/1
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url }
    end
  end

  private
    def set_page
      @page = Page.find_by!(slug: params[:id])
    end

    def page_params
      params.require(:page).permit(:title, :body)
    end
end
