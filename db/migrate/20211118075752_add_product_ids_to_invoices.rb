class AddProductIdsToInvoices < ActiveRecord::Migration[6.1]
  def change
    add_column :invoices, :product_ids, :text
  end
end
