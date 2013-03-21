class AddNotificationCode < ActiveRecord::Migration
  def self.up
    change_table :message_notifications do |t|
      t.string :message_notification_code, :default => nil
    end
  end

  def self.down
    change_table :message_notifications do |t|
      t.remove :message_notification_code
    end
  end
end
