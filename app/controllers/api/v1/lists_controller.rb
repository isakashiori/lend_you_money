class Api::V1::ListsController < ApplicationController
  def create
    list = List.new(list_params)
  end

  private

  def list_params
    params.require(:list).permit(:borrower_name, :total_costs, :due_date, :lend_date)
  end
end
