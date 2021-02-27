class Mexpense < ApplicationRecord
    
    after_save do
      update_column :balance, (Mexpense.last + credit - debit)
    end
end
