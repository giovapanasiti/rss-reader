class AddLabelsToFeed < ActiveRecord::Migration[7.2]
  def change
    add_column :feeds, :labels, :jsonb
  end
end
