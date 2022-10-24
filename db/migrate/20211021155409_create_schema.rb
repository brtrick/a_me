class CreateSchema < ActiveRecord::Migration[7.0]
  def change
    ApplicationRecord.connection.create_schema(ENV["SCHEMA"])
    ActiveRecord::Base.table_name_prefix = "#{ENV["SCHEMA"]}."
    ActiveRecord::SchemaMigration.create_table
    ActiveRecord::InternalMetadata.create_table
  end
end
