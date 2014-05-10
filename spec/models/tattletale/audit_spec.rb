require 'spec_helper'

module Tamaudit
  describe Audit do
    it{ should belong_to(:auditable) }
    it{ should belong_to(:user)}
  end
end
