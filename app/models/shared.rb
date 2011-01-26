module Shared
  def self.included(base)
    base.send :include, InstanceMethods
    base.send :extend, ClassMethods
  end

  module InstanceMethods
    def deleted!
      self.deleted_at = Time.now
      self.save
    end

    def deleted?
      !self.deleted_at.blank?
    end
  end #instances

  module ClassMethods
    #TODO
    def normal_datas
      self.all.select{|r| r if !r.deleted?}
    end
  end
end