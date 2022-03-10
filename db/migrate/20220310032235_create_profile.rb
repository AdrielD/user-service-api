# frozen_string_literal: true

# Creates 'profiles' table to store user related data, apart from auth information
class CreateProfile < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :username,     null: false, unique: true
      t.string :name,         null: false
      t.text :bio,            null: false, default: ''
      t.date :birthday,       null: false
      t.string :phone

      t.timestamps null: false

      t.references :user, foreign_key: true
    end
  end
end
