class AvailabilitiesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /availabilities
  # GET /availabilities.xml
  def index
    @availabilities = Availability.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @availabilities }
    end
  end

  # GET /availabilities/1
  # GET /availabilities/1.xml
  def show
    @availability = Availability.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @availability }
    end
  end

  # GET /availabilities/new
  # GET /availabilities/new.xml
  def new
    @availability = Availability.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @availability }
    end
  end

  # GET /availabilities/1/edit
  def edit
    @availability = Availability.find(params[:id])
  end

  # POST /availabilities
  # POST /availabilities.xml
  def create
    @availability = Availability.new(params[:availability])

    respond_to do |format|
      if @availability.save
        format.html { redirect_to(@availability, :notice => 'Availability was successfully created.') }
        format.xml  { render :xml => @availability, :status => :created, :location => @availability }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @availability.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /availabilities/1
  # PUT /availabilities/1.xml
  def update
    @availability = Availability.find(params[:id])

    respond_to do |format|
      if @availability.update_attributes(params[:availability])
        format.html { redirect_to(@availability, :notice => 'Availability was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @availability.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /availabilities/1
  # DELETE /availabilities/1.xml
  def destroy
    @availability = Availability.find(params[:id])
    @availability.destroy

    respond_to do |format|
      format.html { redirect_to(availabilities_url) }
      format.xml  { head :ok }
    end
  end
end
