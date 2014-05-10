class GeneralModel < ActiveRecord::Base
  belongs_to :user
  include TamAudit::Auditor
end

class User < ActiveRecord::Base
end

