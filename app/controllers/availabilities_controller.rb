class AvailabilitiesController < ApplicationController # disponibilidades
  # GET /availabilities
  # GET /availabilities.xml
  
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  
  def index
    @availabilities = Availabilitie.all
    #%w(bat #{str} cat rat)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @availabilities }
    end
  end

  # GET /availabilities/1
  # GET /availabilities/1.xml
  def show
    @availability = Availabilitie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @availability }
    end
  end

  # GET /availabilities/new
  # GET /availabilities/new.xml
  def new
    @availability = Availabilitie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @availability }
    end
  end

  # GET /availabilities/1/edit
  def edit
    @availability = Availabilitie.find(params[:id])
  end

  # POST /availabilities
  # POST /availabilities.xml
  def create
    @availability = Availabilitie.new(params[:availability])

    respond_to do |format|
      if @availability.save
        format.html { redirect_to(@availability, :notice => 'Availabilitie was successfully created.') }
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
    @availability = Availabilitie.find(params[:id])

    respond_to do |format|
      if @availability.update_attributes(params[:availability])
        format.html { redirect_to(@availability, :notice => 'Availabilitie was successfully updated.') }
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
    @availability = Availabilitie.find(params[:id])
    @availability.destroy

    respond_to do |format|
      format.html { redirect_to(availabilities_url) }
      format.xml  { head :ok }
    end
  end
end
