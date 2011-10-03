class QuotesController < ApplicationController
  # GET /quotes
  # GET /quotes.xml
  
  
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  def index
    if current_user.role.eql? "Admin"
      @quotes = Quote.all
    else
      if current_user.role.eql?("Doctor")
        current_user.id
        @quotes = Quote.where(:doctor_id => current_user.id)
      else
        @quotes = Quote.where(:user_id => current_user.id)
      end
    end

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
     @quote = Quote.new(params[:quote])
     @init = @quote.hour_init.to_s.split(" ")
     @init[1]
     @quote.hour_init = @init[1]
     @end = @quote.hour_end.to_s.split(" ")
     @quote.hour_end = @end[1]
     
     #debugger
     @quote.user_id = current_user.id

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
    user_id = @quote.user_id
    user_id
    @usuar = User.find_by_id(user_id)
    @usuar = @usuar.email
    y @usuar
    @quote
    
    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        @typeMessage = @quote.state 
        #envia el e_mail
        UserMailer.registration_confirmation(@usuar, @typeMessage).deliver
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
