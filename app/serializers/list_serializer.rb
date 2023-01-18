class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :borrower_name, :total_costs, :due_date, :lend_date
end
