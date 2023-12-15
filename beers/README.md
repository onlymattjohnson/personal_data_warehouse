# 🍻 Beers

> A set of tables to store beer checkin data from Untappd.

## Required

Before creating this table, you will need to create the `transactions` schema.

## Structure

### BEER_CHECKINS

The table will store beer checkins

| Field | Type | Description |
| ----- | ---- | ----------- |
| id    | serial | The primary key and unique identifier for each row |
| untappd_checkin_id | int | The primary key for Untappd identifier |
| created_date | datetime | The date the checkin was created |
| rating | decimal | The rating out of 5 for the beer checked into |
| untappd_beer_id | int | The identifier for the beer in untappd |
| untappd_brewery_id | int | The identifier for the brewery in untappd |
| checkin_url | varchar| An URL to the checkin on untappd |

### BEERS

This table will store beers

| Field | Type | Description |
| ----- | ---- | ----------- |
| id    | serial | The primary key and unique identifier for each row |
| untappd_beer_id | int | The identifier for the beer in untappd |
| beer_name | varchar | The name of the beer | 
| beer_style | varchar| The style of the beer |
| beer_abv | decimal | The % of alcohol by volume of the beer |


### BREWERIES

This table wills tore breweries

| Field | Type | Description |
| ----- | ---- | ----------- |
| id    | serial | The primary key and unique identifier for each row |
| untappd_brewery_id | int | The identifier for the brewery in untappd |
| brewery_name | varchar | The name of the brewery | 
| brewery_type | varchar | The type of brewery |
| brewery_country | varchar | The country that the brewery is located in |
| brewery_city | varchar | The city that the brewery is located in |
| brewery_state | varchar | The state that the brewery is located in |
| brewery_lat | decimal | The latitude that the brewery is located in |
| brewery_lon | decimal | The longitude that the brewery is located in |
