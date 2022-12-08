module ApplicantsHelper
  def applicants_status
    Applicant.statuses.map {|key, value| [key.titleize, Applicant.statuses.key(value)]}
  end
end
