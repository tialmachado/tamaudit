class GeneralModel < ActiveRecord::Base
  belongs_to :user
  include Tamaudit::Auditor
end
