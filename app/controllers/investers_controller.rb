class InvestersController < ApplicationController

  before_action :check_invester_id, only: :show


  def  show
    invester = Invester.find(params[:id])
    @name =  invester.name
    @history = invester.history
    @image = invester.image
    @risk = invester.risk
    @term = invester.term
    @investment_type = invester.investment_type

    @date = Stockinformation.all
    @date2 = Book.all
  end

  private
    def check_invester_id
      redirect_to root_path unless params[:id] == "1"
    end
end
