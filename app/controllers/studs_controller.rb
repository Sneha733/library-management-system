class StudsController < ApplicationController
  before_action :set_stud, only: %i[ show edit update destroy ]

  # GET /studs or /studs.json
  def index
    @studs = Stud.all
  end

  # GET /studs/1 or /studs/1.json
  def show
  end

  # GET /studs/new
  def new
    @stud = Stud.new
  end

  # GET /studs/1/edit
  def edit
  end

  # POST /studs or /studs.json
  def create
    @stud = Stud.new(stud_params)

    respond_to do |format|
      if @stud.save
        format.html { redirect_to stud_url(@stud), notice: "Student was successfully created." }
        format.json { render :show, status: :created, location: @stud }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studs/1 or /studs/1.json
  def update
    respond_to do |format|
      if @stud.update(stud_params)
        format.html { redirect_to stud_url(@stud), notice: "Student was successfully updated." }
        format.json { render :show, status: :ok, location: @stud }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studs/1 or /studs/1.json
  def destroy
    @stud.destroy

    respond_to do |format|
      format.html { redirect_to studs_url, notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stud
      @stud = Stud.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stud_params
      params.require(:stud).permit(:stud_name, :stud_address)
    end
end
