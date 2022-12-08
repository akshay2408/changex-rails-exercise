# frozen_string_literal: true

# ApplicationHelper
module ApplicationHelper
  def project_applicants(projects, project_title)
    project = projects.find_by(title: project_title)
    applicants = project.applicants.where(status: 'approved').pluck(:name).join(', ')
  end
end
