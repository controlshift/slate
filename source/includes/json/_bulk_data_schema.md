### Bulk data schema

This retrieves information on the underlying schemas of tables exported by the Bulk Data feature. It can be used
in your ETL processes to automate the setup of tables in your data warehouse.

If the _Compress bulk data exports_ option is enabled, the extra `compression_format` property will be included in the response with the format used for compressing the bulk data export CSVs.

> Response format:

```json
{
  "tables": [
    {
      "table": {
        "name": "petitions",
        "columns": [
          "title": {
            "type": "string",
            "sql_type": "character varying",
            "limit": null,
            "nullable": true,
            "default_value": null
          },
          "custom_goal": {
            "type": "integer",
            "sql_type": "integer",
            "limit": 4,
            "nullable": true,
            "default_value": null
          },
          ...
        ]
      }
    },
    ...
  ],
  "settings": {
    "compression_format": "BZIP2"
  }
}
```

#### HTTP Request

`GET https://demo.controlshiftlabs.com/api/bulk_data/schema.json`

<div></div>
