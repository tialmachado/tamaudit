class GeneralModel < ActiveRecord::Base
  belongs_to :user
  include TamAudit::Auditor
end
