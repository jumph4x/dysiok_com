class CreateImageAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.integer    :spree_asset_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :attachments
  end
end
