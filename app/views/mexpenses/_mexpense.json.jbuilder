json.extract! mexpense, :id, :date, :particulars, :debit, :credit, :balance, :created_at, :updated_at
json.url mexpense_url(mexpense, format: :json)
