class AddFieldsToStory < ActiveRecord::Migration[7.2]
  def change
    add_column :stories, :generation_status, :string
    add_index :stories, :generation_status
    add_column :stories, :generated_article_link, :string
    add_column :stories, :generation_messages, :text
  end
end
