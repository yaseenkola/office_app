class Mexpense < ApplicationRecord
    
    after_save do
      update_column :balance, (credit - debit)
    end
end
