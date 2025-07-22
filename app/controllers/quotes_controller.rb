class QuotesController < ApplicationController
  def index
    @quotes = Quote.all.order(created_at: :desc)
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to quotes_path, notice: "Frase criada com sucesso."
    else
      flash.now[:alert] = "Erro ao criar frase."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:content, :author)
  end
end
