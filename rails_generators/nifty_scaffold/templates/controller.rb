class <%= plural_class_name %>Controller < ApplicationController
  <%= controller_methods :actions %>

private
  def filter_model *keys
    result_set = <%= class_name %>.scoped({})
    keys.each do |key|
      if (value = params[key]).present?
        result_set = result_set.scoped( :conditions => { key => params[key] } )
      end
    end
    result_set
  end
end
