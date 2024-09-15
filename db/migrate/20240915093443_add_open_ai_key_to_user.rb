class AddOpenAiKeyToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :openai_key, :string
  end
end
