class AddCounterCache < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :offers_count, :integer, default: 0
  end
end
