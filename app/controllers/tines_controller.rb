class TinesController < ApplicationController
  # GET /tines
  # GET /tines.json
  

  def index
    @tines = Tine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tines }
    end
  end

  # GET /tines/1
  # GET /tines/1.json
  def show
    @tine = Tine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tine }
    end
  end

  # GET /tines/new
  # GET /tines/new.json
  def new
    @tine = Tine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tine }
    end
  end

  # GET /tines/1/edit
  def edit
    @tine = Tine.find(params[:id])
  end

  # POST /tines
  # POST /tines.json
  def create
    @tine = Tine.new(params[:tine])

    respond_to do |format|
      if @tine.save
        format.html { redirect_to @tine, notice: 'Tine was successfully created.' }
        format.json { render json: @tine, status: :created, location: @tine }
      else
        format.html { render action: "new" }
        format.json { render json: @tine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tines/1
  # PUT /tines/1.json
  def update
    @tine = Tine.find(params[:id])

    respond_to do |format|
      if @tine.update_attributes(params[:tine])
        format.html { redirect_to @tine, notice: 'Tine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tines/1
  # DELETE /tines/1.json
  def destroy
    @tine = Tine.find(params[:id])
    @tine.destroy

    respond_to do |format|
      format.html { redirect_to tines_url }
      format.json { head :no_content }
    end
  end
  
  def myurl
     puts 111111111111
     tiny_url = Tine.find_by_tiny(params[:code])
     puts tiny_url
     puts 2222222222
     redirect_to tiny_url.url
  end

end
