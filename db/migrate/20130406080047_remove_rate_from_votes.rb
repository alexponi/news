class RemoveRateFromVotes < ActiveRecord::Migration
  def up
    remove_column :votes, :rate
  end

  def down
    add_column :votes, :rate, :integer
  end
end
