  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.destroy

    respond_to do |format|
      flash[:notice] = "Successfully destroyed <%= name.underscore.humanize.downcase %>."
      format.html { redirect_to <%= items_path('url') %> }
    <%- if options[:xml] -%>
      format.xml  { head :ok }
    <%- end -%>
    <%- if options[:json] -%>
      format.json { head :ok }
    <%- end -%>
    end
  end
