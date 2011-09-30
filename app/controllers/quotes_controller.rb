class QuotesController < ApplicationController
  # GET /quotes
  # GET /quotes.xml
  
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  def index
    #@quotes = Quote.all
    if current_user.role.eql? "Admin"
      @quotes = Quote.all
    else
      p current_user.id
      p @quotes = Quote.where(:user_id => current_user.id)
      #p  @quote = Quote.find_by_user_id(current_user.id)
    end
=begin
    if current_user.role.eql? "Paciente"
       @quote = Quote(:user_id => @user_id, :doctors_id => @doctors_id)
    else
       @quote = Quote.all
    end
=end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quotes }
    end
  end

  # GET /quotes/1
  # GET /quotes/1.xml
  def show
    @quote = Quote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quote }
    end
  end

  # GET /quotes/new
  # GET /quotes/new.xml
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quote }
    end
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end

  # POST /quotes
  # POST /quotes.xml
  def create
     y @quote = Quote.new(params[:quote])
     #debugger
     y @quote.user = current_user
    #@quote = Appointment(:customer_id => @customer_id, :carseller_id => @carseller_id)
    #y @quote.id_user = current_user.id
    #y @quote.id_doctors = :id_doctors

    respond_to do |format|
      if @quote.save
        format.html { redirect_to(@quote, :notice => 'Quote was successfully created.') }
        format.xml  { render :xml => @quote, :status => :created, :location => @quote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quotes/1
  # PUT /quotes/1.xml
  def update
    @quote = Quote.find(params[:id])

    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        format.html { redirect_to(@quote, :notice => 'Quote was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.xml
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to(quotes_url) }
      format.xml  { head :ok }
    end
  end
end
