class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:show, :index, :home]

  def index
    @pages = Page.all
  end

  def home
    @home = "template healing"
  end

  def show; end

  def new
    @page = Page.new
  end

  def edit; end

  # POST /pages
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to @page, notice: t(:'pages.create.success')
    else
      render action: 'new' 
    end
  end

  # PATCH/PUT /pages/1
  def update
    if @page.update(page_params)
      redirect_to @page, notice: t(:'pages.update.success')
    else
      render action: 'edit' 
    end
  end

  # DELETE /pages/1
  def destroy
    @page.destroy
    redirect_to :root
  end

  private
  def set_page
    @page = Page.find_by!(slug: params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :body)
  end
end
