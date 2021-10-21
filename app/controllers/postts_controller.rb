class PosttsController < ApplicationController
  before_action :set_postt, only: %i[ show edit update destroy ]

  # GET /postts or /postts.json
  def index
    @postt = Postt.new
    @postts = Postt.all
  end

  # GET /postts/1 or /postts/1.json
  def show
  end

  # GET /postts/new
  def new
    @postt = Postt.new
  end

  # GET /postts/1/edit
  def edit
  end

  # POST /postts or /postts.json
  def create
    @postt = Postt.new
    @postts = Postt.all
    @postt_data = Postt.new(postt_params)
    if @postt_data.save
      respond_to do |format|
        format.html { redirect_to postts_url } 
        format.js  # <-- will render `app/views/posts/update.js.erb`
      end
    else
      render "new"
    end
    # respond_to do |format|
    #   if @postt.save
    #     format.html { redirect_to @postt, notice: "Postt was successfully created." }
    #     format.json { render :show, status: :created, location: @postt }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @postt.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /postts/1 or /postts/1.json
  def update
    respond_to do |format|
      if @postt.update(postt_params)
        format.html { redirect_to @postt, notice: "Postt was successfully updated." }
        format.json { render :show, status: :ok, location: @postt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postts/1 or /postts/1.json
  def destroy
    @postt.destroy
    respond_to do |format|
      format.html { redirect_to postts_url, notice: "Postt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postt
      @postt = Postt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postt_params
      params.require(:postt).permit(:name, :description)
    end
end
