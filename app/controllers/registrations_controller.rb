class RegistrationsController < ApplicationController
  # GET /registrations
  # GET /registrations.xml
  def index
    redirect_to(new_registration_url)
    #@registrations = Registration.find(:all)

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @registrations }
    #end
  end

  # GET /registrations/1
  # GET /registrations/1.xml
  def show
    @registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @registration }
    end
  end

  # GET /registrations/new
  # GET /registrations/new.xml
  def new
    @registration = Registration.new
    # render(:layout => false)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @registration }
    end
  end

  # GET /registrations/1/edit
  def edit
    redirect_to(new_registration_url)
    
    #@registration = Registration.find(params[:id])
  end

  # POST /registrations
  # POST /registrations.xml
  def create
    @registration = Registration.new(params[:registration])

    respond_to do |format|
      if @registration.save
        flash[:notice] = 'Thanks for your business. One of our Certified Moving Consultants will contact you shortly.'
        send_welcome_email
        format.html { redirect_to(@registration) }
        format.xml  { render :xml => @registration, :status => :created, :location => @registration }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registrations/1
  # PUT /registrations/1.xml
  def update
    redirect_to(new_registration_url)
    
    #@registration = Registration.find(params[:id])

    #respond_to do |format|
    #  if @registration.update_attributes(params[:registration])
    #    flash[:notice] = 'Registration was successfully updated.'
    #    format.html { redirect_to(@registration) }
    #    format.xml  { head :ok }
    #  else
    #    format.html { render :action => "edit" }
    #    format.xml  { render :xml => @registration.errors, :status => :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.xml
  def destroy
    redirect_to(new_registration_url)
    
    #@registration = Registration.find(params[:id])
    #@registration.destroy

    #respond_to do |format|
    #  format.html { redirect_to(registrations_url) }
    #  format.xml  { head :ok }
    #end
  end

  def send_welcome_email
    # triggered via:
    # http://localhost:3000/registration/send_welcome_email
 
    # note the deliver_ prefix, this is IMPORTANT
    ##Postoffice.deliver_welcome(@registration.first_name, @registration.email)
    Postoffice.deliver_welcome(@registration.first_name, @registration.email, @registration.home_phone, @registration.move_date, @registration.move_from_zip, @registration.move_size_id, @registration.move_to_city, @registration.special_instructions)
 
    # optional, but I like to keep people informed
    ## flash[:notice] = "You've successfuly registered. Please check your email for a confirmation!"
 
    # render the default action
    ## render :action => 'index'  
    
    
  end

end
