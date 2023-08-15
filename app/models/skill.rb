class Skill < ApplicationRecord
  belongs_to :education
  belongs_to :certification
  belongs_to :project
end
