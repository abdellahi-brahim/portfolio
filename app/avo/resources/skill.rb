class Avo::Resources::Skill < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
  field :name, as: :text
  field :icon, as: :text
  field :kind, as: :text
  field :education, as: :belongs_to
  field :certification, as: :belongs_to
  field :project, as: :belongs_to
  end
end
