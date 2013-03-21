class Duck < ActiveRecord::Base
  acts_as_messageable
  def mailboxer_email(object)
    case object
    when Message
      return nil
    when MessageNotification
      return email
    end
  end
end
