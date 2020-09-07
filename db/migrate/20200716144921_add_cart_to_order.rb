# frozen_string_literal: true

class AddCartToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :cart, null: false, foreign_key: true
  end
end
