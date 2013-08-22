class AgeGroupsController < ApplicationController
  # GET /age_groups
  # GET /age_groups.json
  def index
    @age_groups = AgeGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @age_groups }
    end
  end

  # GET /age_groups/1
  # GET /age_groups/1.json
  def show
    @age_group = AgeGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @age_group }
    end
  end

  # GET /age_groups/new
  # GET /age_groups/new.json
  def new
    @age_group = AgeGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @age_group }
    end
  end

  # GET /age_groups/1/edit
  def edit
    @age_group = AgeGroup.find(params[:id])
  end

  # POST /age_groups
  # POST /age_groups.json
  def create
    @age_group = AgeGroup.new(params[:age_group])

    respond_to do |format|
      if @age_group.save
        format.html { redirect_to @age_group, notice: 'Age group was successfully created.' }
        format.json { render json: @age_group, status: :created, location: @age_group }
      else
        format.html { render action: "new" }
        format.json { render json: @age_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /age_groups/1
  # PUT /age_groups/1.json
  def update
    @age_group = AgeGroup.find(params[:id])

    respond_to do |format|
      if @age_group.update_attributes(params[:age_group])
        format.html { redirect_to @age_group, notice: 'Age group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @age_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /age_groups/1
  # DELETE /age_groups/1.json
  def destroy
    @age_group = AgeGroup.find(params[:id])
    @age_group.destroy

    respond_to do |format|
      format.html { redirect_to age_groups_url }
      format.json { head :no_content }
    end
  end
end
