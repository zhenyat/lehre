class VerbsController < ApplicationController
  before_action :set_verb, only: [:show, :edit, :update, :destroy]

  # GET /verbs
  # GET /verbs.json
  def index
#   @verbs = Verb.all
    @q     = Verb.order('lower(infinitive)').ransack(params[:q])
    @verbs = @q.result(distinct: true)
  end

  # GET /verbs/1
  # GET /verbs/1.json
  def show
  end

  # GET /verbs/new
  def new
    @verb = Verb.new
    3.times do
      @verb.examples.build
    end
    6.times do
      @verb.conjugations.build
#      @personal_pronoun = PersonalPronoun.third
    end
  end

  # GET /verbs/1/edit
  def edit
    (3 - @verb.examples.count).times do
      @verb.examples.build
    end
    (6 - @verb.conjugations.count).times do
      @verb.conjugations.build
    end
  end

  # POST /verbs
  # POST /verbs.json
  def create
    @verb = Verb.new(verb_params)

    respond_to do |format|
      if @verb.save
        format.html { redirect_to @verb, notice: 'Verb was successfully created.' }
        format.json { render :show, status: :created, location: @verb }
      else
        format.html { render :new }
        format.json { render json: @verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verbs/1
  # PATCH/PUT /verbs/1.json
  def update
    respond_to do |format|
      if @verb.update(verb_params)
        format.html { redirect_to @verb, notice: 'Verb was successfully updated.' }
        format.json { render :show, status: :ok, location: @verb }
      else
        format.html { render :edit }
        format.json { render json: @verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verbs/1
  # DELETE /verbs/1.json
  def destroy
    @verb.destroy
    respond_to do |format|
      format.html { redirect_to verbs_url, notice: 'Verb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verb
      @verb = Verb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verb_params
      params.require(:verb).permit(:group_id, :rule_id, :infinitive, :prasens, :simple, :participle, :trxn, :ru, :en, :aux,
                                    examples_attributes: [:id, :_destroy, :de, :en, :ru],
                                    conjugations_attributes: [:id, :_destroy, :personal_pronoun, :present_simple, :past_simple, :present_perfect])
    end
end
