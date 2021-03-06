# frozen_string_literal: true

class Category < ApplicationRecord
  VALID_NAME_REGEX = /\A[\sA-Za-z]*\z/i.freeze

  has_many :restaurants

  validates :name, presence: true, length: { maximum: 25, minimum: 2 }, format: { with: VALID_NAME_REGEX }, uniqueness: { case_sensitive: false }
end
