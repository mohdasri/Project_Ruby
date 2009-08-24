class NasyidsController < ApplicationController
  # GET /nasyids
  # GET /nasyids.xml
  def index
    @nasyids = Nasyid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nasyids }
    end
  end

  # GET /nasyids/1
  # GET /nasyids/1.xml
  def show
    @nasyid = Nasyid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nasyid }
    end
  end

  # GET /nasyids/new
  # GET /nasyids/new.xml
  def new
    @nasyid = Nasyid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nasyid }
    end
  end

  # GET /nasyids/1/edit
  def edit
    @nasyid = Nasyid.find(params[:id])
  end

  # POST /nasyids
  # POST /nasyids.xml
  def create
    @nasyid = Nasyid.new(params[:nasyid])

    respond_to do |format|
      if @nasyid.save
        flash[:notice] = 'Nasyid was successfully created.'
        format.html { redirect_to(@nasyid) }
        format.xml  { render :xml => @nasyid, :status => :created, :location => @nasyid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nasyid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nasyids/1
  # PUT /nasyids/1.xml
  def update
    @nasyid = Nasyid.find(params[:id])

    respond_to do |format|
      if @nasyid.update_attributes(params[:nasyid])
        flash[:notice] = 'Nasyid was successfully updated.'
        format.html { redirect_to(@nasyid) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nasyid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nasyids/1
  # DELETE /nasyids/1.xml
  def destroy
    @nasyid = Nasyid.find(params[:id])
    @nasyid.destroy

    respond_to do |format|
      format.html { redirect_to(nasyids_url) }
      format.xml  { head :ok }
    end
  end
end
