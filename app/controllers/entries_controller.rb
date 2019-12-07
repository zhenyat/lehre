class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  
  # GET /entries
  # GET /entries.json
  def index
#    @entries = Entry.order('lower(de)')
    @q = Entry.order('lower(de)').ransack(params[:q])
    @entries = @q.result(distinct: true)
  end
 
  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
    4.times do
      @entry.samples.build
    end
  end

  # GET /entries/1/edit
  def edit
    (4 - @entry.samples.count).times do
      @entry.samples.build
    end
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        flash[:success] = "Erfolgreich eingereicht (Successfully submitted)"
        format.html {redirect_to action: :new}
#        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
#        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:pos, :art, :de, :trxn, :pl, :en, :ru, :comment, 
                                    samples_attributes: [:id, :_destroy, :de, :en, :ru])
    end
end
