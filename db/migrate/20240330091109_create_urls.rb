class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :short_url
      t.integer :click_count

      t.timestamps
    end
  end
end
