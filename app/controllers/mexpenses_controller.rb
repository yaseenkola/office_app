class MexpensesController < ApplicationController
  before_action :set_mexpense, only: %i[ show edit update destroy ]

  # GET /mexpenses or /mexpenses.json
  def index
    @mexpenses = Mexpense.order(date: :desc, balance: :desc)
    
    balance = 100
    @mexpenses.each do |mexpense|
    balance += mexpense.credit.to_f - mexpense.debit.to_f
    mexpense.balance = balance
    end
    # @mexpenses = @mexpenses.sort { |e| e.balance }
  end

  # GET /mexpenses/1 or /mexpenses/1.json
  def show
  end

  # GET /mexpenses/new
  def new
    @mexpense = Mexpense.new
  end

  # GET /mexpenses/1/edit
  def edit
  end

  # POST /mexpenses or /mexpenses.json
  def create
    @mexpense = Mexpense.new(mexpense_params)

    respond_to do |format|
      if @mexpense.save
        format.html { redirect_to @mexpense, notice: "Mexpense was successfully created." }
        format.json { render :show, status: :created, location: @mexpense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mexpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mexpenses/1 or /mexpenses/1.json
  def update
    respond_to do |format|
      if @mexpense.update(mexpense_params)
        format.html { redirect_to @mexpense, notice: "Mexpense was successfully updated." }
        format.json { render :show, status: :ok, location: @mexpense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mexpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mexpenses/1 or /mexpenses/1.json
  def destroy
    @mexpense.destroy
    respond_to do |format|
      format.html { redirect_to mexpenses_url, notice: "Mexpense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mexpense
      @mexpense = Mexpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mexpense_params
      params.require(:mexpense).permit(:date, :particulars, :debit, :credit, :balance)
    end
end
