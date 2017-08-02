class QuestionnairesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
  before_action :set_current_user_email
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_questionnaires

  # GET /questionnaires
  # GET /questionnaires.json
  def index
    params[:search]='' if params[:commit]=='Показать все'
    @questionnaires = Questionnaire.where('fio LIKE ? AND user LIKE ?', "%#{params[:search]}%", @current_user_email).order(:fio).paginate(:page => params[:page], :per_page => 15)
    @count = @questionnaires.count
  end

  # GET /questionnaires/1
  # GET /questionnaires/1.json
  def show
    invalid_questionnaires if @questionnaire.user != @current_user_email
  end

  # GET /questionnaires/new
  def new
    @questionnaire = Questionnaire.new
  end

  # GET /questionnaires/1/edit
  def edit
  end

  # POST /questionnaires
  # POST /questionnaires.json
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.user = @current_user_email
    # flash[:alert] = "----------> #{@questionnaire.is_name_unique?} <-----------"

    respond_to do |format|
      if @questionnaire.save
        format.html { redirect_to @questionnaire, notice: 'Questionnaire was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaire }
      else
        format.html { render :new }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaires/1
  # PATCH/PUT /questionnaires/1.json
  def update
    respond_to do |format|
      if @questionnaire.update(questionnaire_params)
        format.html { redirect_to @questionnaire, notice: 'Questionnaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaire }
      else
        format.html { render :edit }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaires/1
  # DELETE /questionnaires/1.json
  def destroy
    @questionnaire.destroy
    respond_to do |format|
      format.html { redirect_to questionnaires_url, notice: 'Questionnaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    def set_current_user_email
      @current_user_email=current_user.email
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaire_params
      params.require(:questionnaire).permit(:fio, :school_number, :index, :city, :street, :building, :apartment, :phone_number, :filling_date, :stay_duration, :industrial_presence, :age, :birth_date, :sex, 
                                            :a_1, :a_2, :a_3, :a_4, :a_5, :a_6, :a_7, :a_8, 
                                            :b_1, :b_2, :b_3, :b_4_01, :b_4_02, :b_4_03, :b_4_04, :b_4_05, :b_4_06, :b_4_07, :b_4_08, :b_4_09, :b_4_10, :b_4_11, :b_4_12, :b_5, :b_6, 
                                            :c_1, :c_2, :c_3, :c_4, :c_5, :c_6, :c_7, 
                                            :d_1_1, :d_1_2, :d_1_3, :d_1_4, :d_1_5, :d_1_6, :d_1_7, :d_1_8, :d_1_9, :d_1_10, :d_1_11, :d_1_12, :d_1_13, :d_1_14, :d_1_15, :d_1_16, :d_1_17, :d_1_18, :d_1_19, :d_1_20, :d_1_20_description, :d_1_0, :d_2_1, :d_2_2, :d_2_3, :d_2_4, :d_2_5, :d_2_6, :d_2_7, :d_2_8, :d_2_9, :d_2_10, :d_2_11, :d_2_12, :d_2_13, :d_2_14, :d_2_15, :d_2_16, :d_2_17, :d_2_18, :d_2_19, :d_2_20, :d_2_0, :d_3,
                                            :dop_1, :dop_2_1, :dop_2_2, :dop_2_3, :dop_2_4, :dop_2_5, :dop_3, :dop_4, :dop_5, :dop_6_1, :dop_6_2, :dop_6_3, :dop_6_4, :dop_6_5, :dop_7_1, :dop_7_2, :dop_7_3, :dop_7_4, :dop_7_5, :dop_8_1, :dop_8_2, :dop_8_3, :dop_8_4, :dop_8_5, :dop_9_1, :dop_9_2, :dop_9_3, :dop_9_4, :dop_10_1, :dop_10_2, :dop_10_3, :dop_10_4, :dop_10_5, :dop_10_6, :dop_11, :dop_12, :dop_13, :dop_14, :dop_15,
                                            :page)
    end

    def invalid_questionnaires
      redirect_to :questionnaires, notice: "Вы пытались просмотреть не сушествующую или не созданную Вами запись"
    end
end
