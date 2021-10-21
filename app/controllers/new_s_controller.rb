class NewSController < ApplicationController
  before_action :set_new_, only: %i[ show edit update destroy ]

  # GET /new_s or /new_s.json
  def index
    @new_s = New.all
  end

  # GET /new_s/1 or /new_s/1.json
  def show
  end

  # GET /new_s/new
  def new
    @new_ = New.new
  end

  # GET /new_s/1/edit
  def edit
  end

  # POST /new_s or /new_s.json
  def create
    @new_ = New.new(new__params)

    respond_to do |format|
      if @new_.save
        format.html { redirect_to @new_, notice: "New  was successfully created." }
        format.json { render :show, status: :created, location: @new_ }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_s/1 or /new_s/1.json
  def update
    respond_to do |format|
      if @new_.update(new__params)
        format.html { redirect_to @new_, notice: "New  was successfully updated." }
        format.json { render :show, status: :ok, location: @new_ }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_s/1 or /new_s/1.json
  def destroy
    @new_.destroy
    respond_to do |format|
      format.html { redirect_to new_s_url, notice: "New  was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_
      @new_ = New.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new__params
      params.require(:new_).permit(:Post, :name, :description)
    end
end
