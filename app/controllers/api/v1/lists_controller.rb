class Api::V1::ListsController < BaseController
  def create
    list = List.new(list_params)

    if list.save
      json_string = ListSerializer.new(list).serialized_json
      render json: json_string
    else
      render_400(nil, @user.errors.full_messages)
    end
  end

  private

  def list_params
    params.require(:list).permit(:borrower_name, :total_costs, :due_date, :lend_date)
  end
end
