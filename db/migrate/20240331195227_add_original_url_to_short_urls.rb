class AddOriginalUrlToShortUrls < ActiveRecord::Migration[6.1]
  def change
    add_column :short_urls, :original_url, :string
  end
end
