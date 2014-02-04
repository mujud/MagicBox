# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
customCurrency = {
  priority: 100,
  iso_code: "MAD",
  name: "Moroccan Dirham",
  symbol: "DH ",
  alternate_symbols: ["dh", "dirham"],
  subunit: "centime",
  subunit_to_unit: 100,
  symbol_first: true,
  html_entity: "",
  decimal_mark: ".",
  thousands_separator: ",",
  iso_numeric: "756"
}
Money::Currency.register(customCurrency)
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
     config.logo = "/assets/store/logo.png"
     config.address_requires_state = false
     config.currency = "MAD"

    
end


Spree.user_class = "Spree::User"
