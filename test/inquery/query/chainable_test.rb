require 'test_helper'

require 'queries/user/fetch_in_group_rel'

module Inquery
  class Query
    class ChainableTest < Minitest::Unit::TestCase
      include TestHelper

      def setup
        self.class.setup_db
        self.class.setup_base_data
      end

      def test_fetch_users_in_group_rels
        result = Queries::User::FetchInGroupRel.run(Group.where('ID IN (1, 2)'))
        assert_equal User.find([1, 2, 3]), result.to_a
      end
    end
  end
end
