class AddDefaultValueToStatusInItems < ActiveRecord::Migration[7.1]
  def change
    change_column_default :items, :status, from: nil, to: "available"
  end
end
