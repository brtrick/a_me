class CreateSchema < ActiveRecord::Migration[7.0]
  def change
    ApplicationRecord.connection.create_schema('authenticate_me')
  end
end
