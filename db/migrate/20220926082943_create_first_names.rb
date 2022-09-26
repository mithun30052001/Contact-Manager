class CreateFirstNames < ActiveRecord::Migration[6.1]
  def change
    create_table :first_names do |t|
      t.string :Last_name
      t.string :Phone_number
      t.string :Email
      t.string :Company_name
      t.string :Birth_date
      t.string :Address

      t.timestamps
    end
  end
end
