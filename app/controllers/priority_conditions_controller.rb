class PriorityConditionsController < ApplicationController
  before_action :set_priority_condition, only: [:show, :edit, :update, :destroy]

  # GET /priority_conditions
  # GET /priority_conditions.json
  def index
    @priority_conditions = PriorityCondition.all
  end

  # GET /priority_conditions/1
  # GET /priority_conditions/1.json
  def show
  end

  # GET /priority_conditions/new
  def new
    @priority_condition = PriorityCondition.new
  end

  # GET /priority_conditions/1/edit
  def edit
  end

  # POST /priority_conditions
  # POST /priority_conditions.json
  def create
    @priority_condition = PriorityCondition.new(priority_condition_params)

    respond_to do |format|
      if @priority_condition.save
        format.html { redirect_to @priority_condition, notice: 'Priority condition was successfully created.' }
        format.json { render :show, status: :created, location: @priority_condition }
      else
        format.html { render :new }
        format.json { render json: @priority_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /priority_conditions/1
  # PATCH/PUT /priority_conditions/1.json
  def update
    respond_to do |format|
      if @priority_condition.update(priority_condition_params)
        format.html { redirect_to @priority_condition, notice: 'Priority condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @priority_condition }
      else
        format.html { render :edit }
        format.json { render json: @priority_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /priority_conditions/1
  # DELETE /priority_conditions/1.json
  def destroy
    @priority_condition.destroy
    respond_to do |format|
      format.html { redirect_to priority_conditions_url, notice: 'Priority condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priority_condition
      @priority_condition = PriorityCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def priority_condition_params
      params.require(:priority_condition).permit(:name)
    end
end
