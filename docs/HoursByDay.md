# OpenapiClient::HoursByDay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |
| **tuesday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |
| **wednesday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |
| **thursday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |
| **friday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |
| **saturday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |
| **sunday** | [**Array&lt;TimeRange&gt;**](TimeRange.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HoursByDay.new(
  monday: [{&quot;from&quot;:&quot;09:00&quot;,&quot;to&quot;:1020}],
  tuesday: [{&quot;from&quot;:&quot;09:00&quot;,&quot;to&quot;:1020}],
  wednesday: [{&quot;from&quot;:&quot;09:00&quot;,&quot;to&quot;:720},{&quot;from&quot;:780,&quot;to&quot;:1020}],
  thursday: [{&quot;from&quot;:&quot;09:00&quot;,&quot;to&quot;:1020}],
  friday: [{&quot;from&quot;:&quot;09:00&quot;,&quot;to&quot;:1020}],
  saturday: [{&quot;from&quot;:600,&quot;to&quot;:1020}],
  sunday: [{&quot;from&quot;:660,&quot;to&quot;:720}]
)
```

