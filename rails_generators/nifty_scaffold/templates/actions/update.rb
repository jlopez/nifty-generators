  def update
    @<%= singular_name %> = <%= class_name %>.find(params[:id])

    respond_to do |format|
      if @<%= singular_name %>.update_attributes(params[:<%= singular_name %>])
        flash[:notice] = "Successfully updated <%= name.underscore.humanize.downcase %>."
        format.html { redirect_to <%= item_path('url') %> }
      <%- if options[:xml] -%>
        format.xml  { render :xml  => @<%= singular_name %> }
      <%- end -%>
      <%- if options[:json] -%>
        format.json { render :json => @<%= singular_name %> }
      <%- end -%>
      else
        format.html { render :action => 'edit' }
      <%- if options[:xml] -%>
        format.xml  { render :xml  => @<%= singular_name %>.errors, :status => :unprocessable_entity }
      <%- end -%>
      <%- if options[:json] -%>
        format.json { render :json => @<%= singular_name %>.errors, :status => :unprocessable_entity }
      <%- end -%>
      end
    end
  end
