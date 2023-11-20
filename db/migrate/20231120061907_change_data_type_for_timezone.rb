class ChangeDataTypeForTimezone < ActiveRecord::Migration[7.1]
   def up
    change_column :users, :timezone, :string
  end

  def down
    change_column :users, :timezone, :datetime
  end
end
