class Avo::Resources::Project < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
  field :name, as: :text
  field :description, as: :textarea
  field :experience, as: :belongs_to
  end
end
