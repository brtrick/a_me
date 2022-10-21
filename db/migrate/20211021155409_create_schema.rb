class CreateSchema < ActiveRecord::Migration[7.0]
  def change
    ApplicationRecord.connection.create_schema('authenticate_me')
    ActiveRecord::Base.table_name_prefix = 'authenticate_me.'
    ActiveRecord::SchemaMigration.create_table
    ActiveRecord::InternalMetadata.create_table
  end
end
