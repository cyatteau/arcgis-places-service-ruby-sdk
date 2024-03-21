$LOAD_PATH.unshift(File.expand_path('c:/Users/cou12953/Documents/RubyClient/ruby_client/lib', __FILE__))
require 'openapi_client'
cap = 40
OpenapiClient.configure do |config|
  config.access_token = 'YOUR_API_KEY'
  config.verify_ssl = false
end
api_instance = OpenapiClient::PlacesApi.new

latitude, longitude = 33.8303, -116.5453  #Palm Springs
options = {'categories' => '13000', 'limit' => 10, 'start' => 0}  #Category 1300 is restaurants
all_places = []

begin
  loop do
    response = api_instance.near_point_get(longitude, latitude, options)
    fetched_places = response.results
    break if all_places.size + fetched_places.size >= cap
    all_places.concat(fetched_places)
    options['start'] += fetched_places.size
  end

  File.open('places_nearby.html', 'w') do |file|
    file.puts <<-HTML
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nearby Places Finder in Ruby</title>
    <link rel="stylesheet" href="https://js.arcgis.com/calcite-components/1.0.0-beta.65/calcite.css">
    <script type="module" src="https://js.arcgis.com/calcite-components/1.0.0-beta.65/calcite.esm.js"></script>
    <script nomodule src="https://js.arcgis.com/calcite-components/1.0.0-beta.65/calcite.js"></script>
    <style>
      body { 
        font-family: 'Raleway', 'Avenir Next', Avenir, 'Helvetica Neue', Helvetica, Arial, sans-serif; 
        background: #f4f4f4;
        margin: 0;
        padding: 20px;
      }
      .container { 
        max-width: 1300px;
        background: #ffffff;
        box-shadow: 0 2px 7px rgba(0,0,0,0.2);
        padding: 20px;
        border-radius: 8px;
        margin: 0 auto;
      }
      .summary { 
        display: flex; 
        justify-content: space-between; 
        padding-bottom: 20px; 
        border-bottom: 1px solid #ddd;
        margin-bottom: 20px;
        font-size: 16px;
      }
      table { 
        width: 100%; 
        border-collapse: collapse; 
        margin: 0 auto; 
        font-size: 17px;
      }
      th, td { 
        padding: 12px; 
        border-bottom: 1px solid #ddd; 
        text-align: left; 
      }
      th { 
        background-color: #007ac2; 
        color: #ffffff;
      }
      tr:hover {
        background-color: #f5f5f5;
      }
      .checkbox-column { 
        width: 20px; 
      }
      .chip { 
        margin: 2px; 
        cursor: pointer; 
        user-select: none;
      }
      .chip:hover {
        background-color: #007bff;
        color: white;
      }
      .button-group { 
        text-align: right; 
        margin-bottom: 20px; 
      }
      calcite-button { 
        margin-left: 10px; 
      }
      h1 {
        font-size: 33px;
        text-align: center;
        padding-bottom: 2px;
      }
    </style>
    </head>
    <body>
    <calcite-shell>
      <calcite-header>
        <h1 slot="header-content">Nearby Places Finder in Ruby</h1>
      </calcite-header>
      <div class="container">
        <div class="button-group">
          <calcite-button id="check-all-btn" appearance="solid">Check All</calcite-button>
          <calcite-button id="uncheck-all-btn" appearance="solid">Uncheck All</calcite-button>
        </div>
        <div class="summary">
          <div>Total places: <strong>#{all_places.size}</strong></div>
          <div id="selected-count">0 places selected</div>
        </div>
        <table>
          <thead>
            <tr>
              <th></th>
              <th>Name</th>
              <th>Categories</th>
              <th>Distance (in meters)</th>
            </tr>
          </thead>
      <tbody>
    HTML

    all_places.each do |place|
      category_labels = place.categories.map { |category| "<calcite-chip class='chip'>#{category.label}</calcite-chip>" }.join
      file.puts <<-HTML
        <tr>
          <td class="checkbox-column"><input type="checkbox" name="place" value="#{place.name}"></td>
          <td>#{place.name}</td>
          <td>#{category_labels}</td>
          <td>#{place.distance.round(2)}</td>
        </tr>
      HTML
    end

    file.puts <<-HTML
      </tbody>
    </table>
    <script>
      document.addEventListener('DOMContentLoaded', function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"][name="place"]');
        var selectedCountDisplay = document.getElementById('selected-count');
        var checkAllBtn = document.getElementById('check-all-btn');
        var uncheckAllBtn = document.getElementById('uncheck-all-btn');
        
        checkboxes.forEach(function(checkbox) {
          checkbox.addEventListener('change', function() {
            var selectedCount = document.querySelectorAll('input[type="checkbox"][name="place"]:checked').length;
            selectedCountDisplay.textContent = selectedCount + " places selected";
          });
        });

        checkAllBtn.addEventListener('click', function() {
          checkboxes.forEach(function(checkbox) {
            checkbox.checked = true;
          });
          selectedCountDisplay.textContent = checkboxes.length + " places selected";
        });

        uncheckAllBtn.addEventListener('click', function() {
          checkboxes.forEach(function(checkbox) {
            checkbox.checked = false;
          });
          selectedCountDisplay.textContent = "0 places selected";
        });
      });
    </script>
  </div>
</calcite-shell>
</body>
</html>
    HTML
  end

  puts "HTML created and place results saved to 'places_nearby.html'."

rescue OpenapiClient::ApiError => e
  puts "Error calling API: #{e}"
end
