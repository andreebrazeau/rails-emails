class Email < ActiveRecord::Base
  attr_accessible :content, :from, :subject, :to
  
  validates :subject, :content, :presence => true
  validates :from, :to, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create , :message => "Invalid email"}
end
