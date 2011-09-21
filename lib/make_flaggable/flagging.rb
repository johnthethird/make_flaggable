module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true, :counter_cache => true
    belongs_to :flagger, :polymorphic => true
  end
end
