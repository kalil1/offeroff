class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :product_img, styles: { product_index: "300x300>", product_show: "400x250>" }, default_url: "images/missing-stamp.png"
  validates_attachment_size :product_img, :less_than => 5.megabytes
  validates_attachment_content_type :product_img, :content_type => ['image/jpeg', 'image/png','image/gif','image/jpep']
end
