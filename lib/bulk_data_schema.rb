require 'net/http'
require 'json'

class BulkDataSchema < Middleman::Extension
  def normalize_types(type, sql_type)
    if (['enum']).include?(type) || (['hstore', 'json', 'jsonb', 'text']).include?(sql_type) || sql_type.include?('character varying')
      'CHARACTER VARYING(max)'
    elsif %w(uuid).include?(sql_type)
      # https://gist.github.com/wrobstory/4b0ce4e8ba51ec40c494881bc126c003
      'CHAR(36)'
    else
      sql_type
    end
  end

  def after_configuration
    uri = URI('https://demo.controlshiftlabs.com/api/bulk_data/schema.json')
    json = Net::HTTP.get(uri)
    tables = JSON.parse(json)['tables']

    File.open(File.join(File.dirname(__FILE__), '../source/data/tables.sql'), 'w') do |f|
      tables.each do |table|
        name = table['table']['name']
        columns = table['table']['columns']
        column_fields = columns.collect{|col, attrs| "\"#{col}\" #{normalize_types(attrs["type"], attrs["sql_type"])}" }.join(', ')
        f.write "DROP TABLE IF EXISTS #{name};\n"
        f.write "CREATE TABLE #{name} (#{column_fields});\n"
      end
    end
  end
end

::Middleman::Extensions.register(:bulk_data_schema, BulkDataSchema)
