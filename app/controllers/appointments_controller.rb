class AppointmentsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  
  # GET /appointments
  # GET /appointments.xml
  def index
    p ">>INICIO >>>>>>>>"
   @appointments= Appointment.all
   p ">>>>>>>>>>"
   y @appointments[0]
      if current_user.role.eql? "Paciente"
        #@appointments.where(:id => current_user.id, :user => @appointments.name)
        #p ">>>>>>>>>>" + @appointments
        @user = current_user.name
        #----------- has_and_belongs_to_many
        #p @appointment << @appointment.find(params[:user=>@user])
      else
         @appointments = Appointment.all
      end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @appointments }
    end
  end

  # GET /appointments/1
  # GET /appointments/1.xml
  def show
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @appointment }
    end
  end

  # GET /appointments/new
  # GET /appointments/new.xml
  def new
    @appointment = Appointment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @appointment }
    end
  end

  # GET /appointments/1/edit
  def edit
    @appointment = Appointment.find(params[:id])
  end

  # POST /appointments
  # POST /appointments.xml
  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.user = current_user.name
    
    #@current_user = current_user.role

    respond_to do |format|
      if @appointment.save(@appointment)
        format.html { redirect_to(@appointment, :notice => 'Appointment was successfully created.') }
        format.xml  { render :xml => @appointment, :status => :created, :location => @appointment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @appointment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /appointments/1
  # PUT /appointments/1.xml
  def update
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      if @appointment.update_attributes(params[:appointment])
        format.html { redirect_to(@appointment, :notice => 'Appointment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @appointment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.xml
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to(appointments_url) }
      format.xml  { head :ok }
    end
  end
end
