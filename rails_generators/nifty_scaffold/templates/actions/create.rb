  def create
    @<%= singular_name %> = <%= class_name %>.new(params[:<%= singular_name %>])

    respond_to do |format|
      if @<%= singular_name %>.save
        flash[:notice] = "Successfully created <%= name.underscore.humanize.downcase %>."
        format.html { redirect_to <%= item_path('url') %> }
      <%- if options[:xml] -%>
        format.xml  { render :xml  => @<%= singular_name %>, :status => :created, :location => @<%= singular_name %> }
      <%- end -%>
      <%- if options[:json] -%>
        format.json { render :json => @<%= singular_name %>, :status => :created, :location => @<%= singular_name %> }
      <%- end -%>
      else
        format.html { render :action => 'new' }
      <%- if options[:xml] -%>
        format.xml  { render :xml  => @<%= singular_name %>.errors, :status => :unprocessable_entity }
      <%- end -%>
      <%- if options[:json] -%>
        format.json { render :json => @<%= singular_name %>.errors, :status => :unprocessable_entity }
      <%- end -%>
      end
    end
  end
