module MakeFlaggable
  module Flaggable
    extend ActiveSupport::Concern

    included do
      has_many :flaggings, :class_name => "MakeFlaggable::Flagging", :as => :flaggable
      attr_readonly :flaggings_count
    end

    module ClassMethods
      def flaggable?
        true
      end
    end

    def flagged?
      flaggings.count > 0
    end

    def flagged_by?(flagger)
      flagger.flagged?(self)
    end
  end
end
