module Queries
  module Group
    class FetchGreen < Inquery::Query::Chainable
      relation class: 'Group', default: proc { ::Group.all }

      def call
        relation.where(color: 'green')
      end
    end
  end
end
