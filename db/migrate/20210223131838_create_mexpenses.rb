class CreateMexpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :mexpenses do |t|
      t.date :date
      t.string :particulars
      t.integer :debit
      t.integer :credit
      # t.decimal :balance

      t.timestamps
    end
  end
end
