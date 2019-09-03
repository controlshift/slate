## Bulk data columns

This retrieves information on the tables exported by the Bulk Data API. For convenience when working with third-party data 
warehouse tools like Amazon Redshift it can be useful to know the current columns for each table that the bulk data API exposes
in CSV format. 

The response is equivalent to the header row of tables exposed through our Bulk Data API. The table parameter controls
which table header row is returned.

> Response format:

```csv
id,petition_id,email,first_name,last_name,phone_number,postcode,created_at,join_organisation,deleted_at,unsubscribe_at,external_constituent_id,member_id,additional_fields,cached_organisation_slug,source,join_group,external_id,new_member,external_action_id,locale,obfuscated_bsd_cons_id,bucket,country,updated_at,user_ip,confirmation_token,confirmed_at,confirmation_sent_at,last_signed_at,join_list_suppressed,old_daisy_chain_used,bsd_ab_test_cons_group_id,from_embed,user_agent,confirmed_reason,synced_to_crm_at,daisy_chain_experiment_slug,eu_data_processing_consent,from_one_click,consent_content_version_id,daisy_chain_id_used,email_opt_in_type_id,facebook_id,utm_params,postcode_id,referring_share_click_id
```

### HTTP Request

`GET https://demo.controlshiftlabs.com/bulk_data/schema/columns?table=signatures`

### Query Parameters

Parameter |  Description
--------- | ------------------
table     |  Which table from the bulk data schema endpoint should be returned
