# == Schema Information
#
# Table name: users
#
#  id     :integer          not null, primary key
#  name   :string(255)
#  avatar :string(255)
#

class User < ActiveRecord::Base

  # Avatar uploader using carrierwave
  mount_uploader :avatar, AvatarUploader
  
end
