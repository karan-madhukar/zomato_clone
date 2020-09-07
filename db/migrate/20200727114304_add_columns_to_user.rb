# frozen_string_literal: true

class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
