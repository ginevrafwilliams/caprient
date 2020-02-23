require "administrate/base_dashboard"

class ProjectDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    photo: Field::String,
    image: Field::ActiveStorage.with_options({show_in_index: true}),
    year: Field::String,
    direction: Field::String,
    coproduction: Field::String,
    coproduction2: Field::String,
    coproduction3: Field::String,
    coproduction4: Field::String,
    coproduction5: Field::String,
    distribution: Field::String,
    story: Field::Text,
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
  year
  image
  direction
  coproduction
  coproduction2
  coproduction3
  coproduction4
  coproduction5
  distribution
  story
  created_at
  updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  title
  year
  direction
  coproduction
  coproduction2
  coproduction3
  coproduction4
  coproduction5
  distribution
  story
  image
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

  # Overwrite this method to customize how projects are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(project)
  #   "Project ##{project.id}"
  # end
end
