class Order < ApplicationRecord
  after_create :order_email

def order_email
  UserMailer.order_email(self).deliver_now
  #AdminMailer.order_email(self).deliver_now
end

end
