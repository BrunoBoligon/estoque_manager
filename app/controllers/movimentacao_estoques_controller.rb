class MovimentacaoEstoquesController < ApplicationController
  before_action :set_movimentacao_estoque, only: [:show, :edit, :update, :destroy]

  # GET /movimentacao_estoques
  # GET /movimentacao_estoques.json
  def index
    @movimentacao_estoques = MovimentacaoEstoque.all
  end

  # GET /movimentacao_estoques/1
  # GET /movimentacao_estoques/1.json
  def show
  end

  # GET /movimentacao_estoques/new
  def new
    @movimentacao_estoque = MovimentacaoEstoque.new
  end

  # GET /movimentacao_estoques/1/edit
  def edit
  end

  # POST /movimentacao_estoques
  # POST /movimentacao_estoques.json
  def create
    @movimentacao_estoque = MovimentacaoEstoque.new(movimentacao_estoque_params)

    respond_to do |format|
      if @movimentacao_estoque.save
        format.html { redirect_to @movimentacao_estoque, notice: 'Movimentacao estoque was successfully created.' }
        format.json { render :show, status: :created, location: @movimentacao_estoque }
      else
        format.html { render :new }
        format.json { render json: @movimentacao_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimentacao_estoques/1
  # PATCH/PUT /movimentacao_estoques/1.json
  def update
    respond_to do |format|
      if @movimentacao_estoque.update(movimentacao_estoque_params)
        format.html { redirect_to @movimentacao_estoque, notice: 'Movimentacao estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimentacao_estoque }
      else
        format.html { render :edit }
        format.json { render json: @movimentacao_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentacao_estoques/1
  # DELETE /movimentacao_estoques/1.json
  def destroy
    @movimentacao_estoque.destroy
    respond_to do |format|
      format.html { redirect_to movimentacao_estoques_url, notice: 'Movimentacao estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimentacao_estoque
      @movimentacao_estoque = MovimentacaoEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimentacao_estoque_params
      params.require(:movimentacao_estoque).permit(:data, :quantidade, :pessoa_id, :operacao_id, :produto_id)
    end
end
