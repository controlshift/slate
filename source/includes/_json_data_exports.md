## Data export schema

This retrieves information on the tables exported by the Bulk Data feature.

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
  ]
}
```

### HTTP Request

`GET https://demo.controlshiftlabs.com/data_exports.json`
