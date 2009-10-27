  def show
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
  <%- if options[:xml] || options[:json] -%>

    respond_to do |format|
      format.html # show.html.erb
    <%- if options[:xml] -%>
      format.xml  { render :xml  => @<%= singular_name %> }
    <%- end -%>
    <%- if options[:json] -%>
      format.json { render :json => @<%= singular_name %> }
    <%- end -%>
    end
  <%- end -%>
  end
