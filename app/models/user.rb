class User < ActiveRecord::Base
  validates :first_name, :last_name, :email,
            :presence => true,
            :length => {:minimum => 2}

  # validates_format_of :email,
  #           :with => /A(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Z‌​a-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$\z/i
end
