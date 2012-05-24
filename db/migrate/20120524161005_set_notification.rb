class SetNotification < ActiveRecord::Migration
  def self.up
    add_column :users, :notification, :string, :default => "1"
  end

  def self.down
    remove_column :users, :notification
  end
end
