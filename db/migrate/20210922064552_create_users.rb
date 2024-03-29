class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name,    default: ""
      t.string :phone,   default: ""
      t.boolean :is_active, default: true
      
      t.timestamps
    end
  end
end
