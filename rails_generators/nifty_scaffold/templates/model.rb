class <%= class_name %> < ActiveRecord::Base
  attr_accessible <%= attributes.map { |a| ":#{a.column_name}" }.join(", ") %>

  #:Relationships
  <%- references.each do |a|-%>
  belongs_to :<%= a.name %>
  <%- end -%>

  def to_s
    "<%= class_name %> ##{id}"
  end
end
