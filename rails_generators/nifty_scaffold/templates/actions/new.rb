  def new
    @<%= singular_name %> = <%= class_name %>.new(<%= references.map {|r| ":#{r.column_name} => params[:#{r.column_name}]" }.join ', ' %>)
  <%- if options[:xml] || options[:json] -%>

    respond_to do |format|
      format.html # new.html.erb
    <%- if options[:xml] -%>
      format.xml  { render :xml  => @<%= singular_name %> }
    <%- end -%>
    <%- if options[:json] -%>
      format.json { render :json => @<%= singular_name %> }
    <%- end -%>
    end
  <%- end -%>
  end
