class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :mobile_number, :address, :contact_type, :photo

  # attr_accessible :title, :body
  # CONTACT_TYPE = %w[driver employee]
  validates_presence_of :full_name, :address, :mobile_number
  validates_presence_of :contact_type

  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  after_create :set_admin

  def set_admin
	   user = User.find(1)
     user.toggle!(:admin)
  end

end
