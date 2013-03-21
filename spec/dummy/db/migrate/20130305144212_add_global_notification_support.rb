class AddGlobalNotificationSupport < ActiveRecord::Migration

  def change
    change_table :notifications do |t|
      t.boolean :global
      t.datetime :expires
    end
    MessageNotification.update_all ["global = ?", false]
  end

end
