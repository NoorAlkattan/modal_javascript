class FirstPagesController < ApplicationController
  before_action :set_first_page, only: [:show, :edit, :update, :destroy]

  # GET /first_pages
  # GET /first_pages.json
  def index
    #this is the first page
    @first_pages = FirstPage.all
  end

  # GET /first_pages/1
  # GET /first_pages/1.json
  def show
  end

  # GET /first_pages/new
  # redirect to second page
  def new
   @first_page = FirstPage.new
  end

  # GET /first_pages/1/edit
  def edit
  end

  # POST /first_pages
  # POST /first_pages.json
  def create
    @first_page = FirstPage.new(first_page_params)

    respond_to do |format|
      if @first_page.save
        format.html { redirect_to @first_page, notice: 'First page was successfully created.' }
        format.json { render :show, status: :created, location: @first_page }
      else
        format.html { render :new }
        format.json { render json: @first_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_pages/1
  # PATCH/PUT /first_pages/1.json
  def update
    respond_to do |format|
      if @first_page.update(first_page_params)
        format.html { redirect_to @first_page, notice: 'First page was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_page }
      else
        format.html { render :edit }
        format.json { render json: @first_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_pages/1
  # DELETE /first_pages/1.json
  def destroy
    @first_page.destroy
    respond_to do |format|
      format.html { redirect_to first_pages_url, notice: 'First page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_page
      @first_page = FirstPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_page_params
      params.fetch(:first_page, {})
    end
end
