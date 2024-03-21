# OpenapiClient::Hours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opening** | [**HoursByDay**](HoursByDay.md) |  | [optional] |
| **popular** | [**HoursByDay**](HoursByDay.md) |  | [optional] |
| **opening_text** | **String** | The opening hours for this place, formatted for display.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Hours.new(
  opening: null,
  popular: null,
  opening_text: Mon-Thu 12:00 PM-11:00 PM; Fri-Sat 12:00 PM-11:30 PM; Sun 12:00 PM-10:30 PM
)
```

