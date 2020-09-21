class AddSalesmanIdToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :salesman_id, :uuid, null: false

    add_foreign_key :offers, :users, column: :salesman_id
  end
end
