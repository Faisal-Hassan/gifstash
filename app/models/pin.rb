class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
	 # :default_url => ""
	 validates_attachment_content_type :image, :content_type => ["image/gif"]

	 validates :image, presence: true
	 validates :description, presence: true
	 validates :description, length: { maximum: 24}
end
