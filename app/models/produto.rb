class Produto < ApplicationRecord

  has_attached_file :img, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }
  end



  @mmj130702