class MoveAttachmentsToMessageNotifications < ActiveRecord::Migration
  def change
    remove_column :notifications, :attachment
    add_column :message_notifications, :attachment, :string
  end
end
