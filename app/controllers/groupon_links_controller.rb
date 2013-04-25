class GrouponLinksController < ApplicationController
  layout 'starter'
  # GET /groupon_links
  # GET /groupon_links.json
  def index
    @groupon_links = GrouponLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groupon_links }
    end
  end

  # GET /groupon_links/1
  # GET /groupon_links/1.json
  def show
    @groupon_link = GrouponLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @groupon_link }
    end
  end

  # GET /groupon_links/new
  # GET /groupon_links/new.json
  def new
    @groupon_link = GrouponLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @groupon_link }
    end
  end

  # GET /groupon_links/1/edit
  def edit
    @groupon_link = GrouponLink.find(params[:id])
  end

  # POST /groupon_links
  # POST /groupon_links.json
  def create
    @cart = current_cart
    groupon = Groupon.find(params[:groupon_id])
    #@groupon_link = GrouponLink.new(params[:groupon_link])
    @groupon_link = @cart.add_groupon(groupon.id)
    #@groupon_link = @cart.groupon_links.build(groupon: groupon)

    respond_to do |format|
      if @groupon_link.save
        format.html { redirect_to @groupon_link.cart, notice: 'Groupon was successfully added.' }
        format.json { render json: @groupon_link, status: :created, location: @groupon_link }
      else
        format.html { render action: "new" }
        format.json { render json: @groupon_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groupon_links/1
  # PUT /groupon_links/1.json
  def update
    @groupon_link = GrouponLink.find(params[:id])

    respond_to do |format|
      if @groupon_link.update_attributes(params[:groupon_link])
        format.html { redirect_to @groupon_link.cart, notice: 'Groupon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @groupon_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupon_links/1
  # DELETE /groupon_links/1.json
  def destroy
    @groupon_link = GrouponLink.find(params[:id])
    @groupon_link.destroy

    respond_to do |format|
      format.html { redirect_to groupon_links_url }
      format.json { head :no_content }
    end
  end
end
