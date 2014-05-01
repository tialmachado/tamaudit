class GeneralModel < ActiveRecord::Base
  belongs_to :user
  include Tattletale::Auditor
end

class User < ActiveRecord::Base
end

