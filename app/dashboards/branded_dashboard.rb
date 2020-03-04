require "administrate/base_dashboard"

class BrandedDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    image: Field::ActiveStorage.with_options({show_in_index: true}),
    year: Field::String,
    direction: Field::String,
    client: Field::String,
    creativity: Field::String,
    youtube: Field::String,
    youtube2: Field::String,
    youtube3: Field::String,
    youtube4: Field::String,
    youtube5: Field::String,
    youtube6: Field::String,
    youtube7: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  id
  title
  year
  image
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  id
  title
  image
  year
  direction
  client
  creativity
  youtube
  youtube2
  youtube3
  youtube4
  youtube5
  youtube6
  youtube7
  created_at
  updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  title
  image
  year
  direction
  client
  creativity
  youtube
  youtube2
  youtube3
  youtube4
  youtube5
  youtube6
  youtube7
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

  # Overwrite this method to customize how brandeds are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(branded)
  #   "Branded ##{branded.id}"
  # end
end
