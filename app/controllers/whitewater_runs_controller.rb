class WhitewaterRunsController < ApplicationController
  before_action :set_whitewater_run, only: [:show, :edit, :update, :destroy]

  # GET /whitewater_runs
  # GET /whitewater_runs.json
  def index
    @whitewater_runs = WhitewaterRun.all
  end

  # GET /whitewater_runs/1
  # GET /whitewater_runs/1.json
  def show
  end

  # GET /whitewater_runs/new
  def new
    @whitewater_run = WhitewaterRun.new
  end

  # GET /whitewater_runs/1/edit
  def edit
  end

  # POST /whitewater_runs
  # POST /whitewater_runs.json
  def create
    @whitewater_run = WhitewaterRun.new(whitewater_run_params)

    respond_to do |format|
      if @whitewater_run.save
        format.html { redirect_to @whitewater_run, notice: 'Whitewater run was successfully created.' }
        format.json { render :show, status: :created, location: @whitewater_run }
      else
        format.html { render :new }
        format.json { render json: @whitewater_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whitewater_runs/1
  # PATCH/PUT /whitewater_runs/1.json
  def update
    respond_to do |format|
      if @whitewater_run.update(whitewater_run_params)
        format.html { redirect_to @whitewater_run, notice: 'Whitewater run was successfully updated.' }
        format.json { render :show, status: :ok, location: @whitewater_run }
      else
        format.html { render :edit }
        format.json { render json: @whitewater_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whitewater_runs/1
  # DELETE /whitewater_runs/1.json
  def destroy
    @whitewater_run.destroy
    respond_to do |format|
      format.html { redirect_to whitewater_runs_url, notice: 'Whitewater run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whitewater_run
      @whitewater_run = WhitewaterRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whitewater_run_params
      params.require(:whitewater_run).permit(:description, :name, :whitewater_class)
    end
end
