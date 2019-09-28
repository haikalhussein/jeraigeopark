require "administrate/base_dashboard"

class AccomodationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    rooms: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    line_address_1: Field::String,
    line_address_2: Field::String,
    postcode: Field::String,
    state: Field::String,
    country: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    description: Field::Text,
    user: Field::BelongsTo,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  rooms
  id
  name
  line_address_1
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  rooms
  id
  name
  line_address_1
  line_address_2
  postcode
  state
  country
  created_at
  updated_at
  description
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  name
  line_address_1
  line_address_2
  postcode
  state
  country
  description
  user
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how accomodations are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(accomodation)
    "#{accomodation.name.humanize}"
  end
end
