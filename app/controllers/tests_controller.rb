class TestsController < ApplicationController
  before_action :set_test, only: %i[ show edit update destroy ]

  # GET /tests or /tests.json
  def index
    @test = Test.new
    @tests = Test.all.paginate(:page => params[:page], :per_page => 2)
  end

  # GET /tests/1 or /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests or /tests.json
  def create
    @test = Test.new
    @tests = Test.all
    @test_1 = Test.new(test_params)
    if @test_1.save
      respond_to do |format|
        format.html { redirect_to tests_url } 
        format.js  # <-- will render `app/views/posts/update.js.erb`
      end
    else
      render "new"
    end

    # respond_to do |format|
    #   if @test.save
    #     format.html { redirect_to @test, notice: "Test was successfully created." }
    #     format.json { render :show, status: :created, location: @test }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @test.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /tests/1 or /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: "Test was successfully updated." }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1 or /tests/1.json
  def destroy
    @tests = Test.all
    if @test.destroy
      respond_to do |format|
        format.html { redirect_to tests_url } 
        format.js  # <-- will render `app/views/posts/update.js.erb`
      end
    else
      render "new"
    end
  end

    # respond_to do |format|
    #   format.html { redirect_to tests_url, notice: "Test was successfully destroyed." }
    #   format.json { head :no_content }
    #   format.js   { render :layout => false }
    # end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_params
      params.require(:test).permit(:name, :description)
    end
end
