class DonosController < ApplicationController
  before_action :set_dono, only: %i[ show edit update destroy ]

  # GET /donos or /donos.json
  def index
  end

  # GET /donos/1 or /donos/1.json
  def show
  end

  # GET /donos/new
  def new
    @dono = Dono.new
  end

  # GET /donos/1/edit
  def edit
  end

  # POST /donos or /donos.json
  def create
    @dono = Dono.new(dono_params)

    respond_to do |format|
      if @dono.save
        format.html { redirect_to dono_url(@dono), notice: "Dono was successfully created." }
        format.json { render :show, status: :created, location: @dono }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donos/1 or /donos/1.json
  def update
    respond_to do |format|
      if @dono.update(dono_params)
        format.html { redirect_to dono_url(@dono), notice: "Dono was successfully updated." }
        format.json { render :show, status: :ok, location: @dono }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donos/1 or /donos/1.json
  def destroy
    @dono.destroy

    respond_to do |format|
      format.html { redirect_to donos_url, notice: "Dono was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dono

      @dono = Dono.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dono_params
      params.require(:dono).permit(:nome, :cpf, :cnpj, :email, :password, :password_confirmation)
    end
end
