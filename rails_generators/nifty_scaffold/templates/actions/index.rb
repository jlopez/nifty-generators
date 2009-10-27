  def index
    @<%= plural_name %> = <%= class_name %>.all
  <%- if options[:xml] || options[:json] -%>

    respond_to do |format|
      format.html # index.html.erb
    <%- if options[:xml] -%>
      format.xml  { render :xml  => @<%= plural_name %> }
    <%- end -%>
    <%- if options[:json] -%>
      format.json { render :json => @<%= plural_name %> }
    <%- end -%>
    end
  <%- end -%>
  end
