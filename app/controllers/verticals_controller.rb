class VerticalsController < ApplicationController
  # GET /verticals
  # GET /verticals.json
  def index
    @verticals = Vertical.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @verticals }
    end
  end

  # GET /verticals/1
  # GET /verticals/1.json
  def show
    @vertical = Vertical.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vertical }
    end
  end

  # GET /verticals/new
  # GET /verticals/new.json
  def new
    @vertical = Vertical.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vertical }
    end
  end

  # GET /verticals/1/edit
  def edit
    @vertical = Vertical.find(params[:id])
  end

  # POST /verticals
  # POST /verticals.json
  def create
    @vertical = Vertical.new(params[:vertical])

    respond_to do |format|
      if @vertical.save
        format.html { redirect_to @vertical, notice: 'Vertical was successfully created.' }
        format.json { render json: @vertical, status: :created, location: @vertical }
      else
        format.html { render action: "new" }
        format.json { render json: @vertical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /verticals/1
  # PUT /verticals/1.json
  def update
    @vertical = Vertical.find(params[:id])

    respond_to do |format|
      if @vertical.update_attributes(params[:vertical])
        format.html { redirect_to @vertical, notice: 'Vertical was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @vertical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verticals/1
  # DELETE /verticals/1.json
  def destroy
    @vertical = Vertical.find(params[:id])
    @vertical.destroy

    respond_to do |format|
      format.html { redirect_to verticals_url }
      format.json { head :ok }
    end
  end
end
