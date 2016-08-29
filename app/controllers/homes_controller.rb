class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]

  # GET /homes
  def index
    @homes_image = Home.all
    @homes = params[:search] ? build_response_to_search_params(params) :
                               Home.all.order(price: :asc)
  end

  # GET /homes/1
  def show
  end

  # GET /homes/new
  def new
    @agents = User.where('is_agent = true')
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
    @agents = User.where('is_agent = true')
    unless @home.user_authorized?(current_user)
      flash[:notice] = 'Only the home owner may edit the home'
      redirect_to homes_path
    end
  end

  # POST /homes
  def create
    @home = Home.new(home_params)
    @home.owner = current_user

    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    unless @home.user_authorized?(current_user)
      flash[:notice] = 'Only the home owner may edit the home'
      redirect_to homes_path
    end

    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    unless @home.user_authorized?(current_user)
      flash[:notice] = 'Only the home owner may edit the home'
      redirect_to homes_path
    end

    @home.delete
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private
  def set_home
    @home = Home.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def home_params
    params.require(:home).permit(:main_image, :additional_image, :address, :beds, :baths, :square_footage, :price, :description, agent: [:id ], links_attributes: [ :url, :description ])
  end

  def build_response_to_search_params(params)
    homes = Home.all

    # price
    homes = if !params[:search][:price][:max].empty? && !params[:search][:price][:min].empty?
              homes.where("price >= ? AND price <= ?", params[:search][:price][:min], params[:search][:price][:max])
            elsif !params[:search][:price][:max].empty?
              homes.where("price <= ?", params[:search][:price][:max])
            elsif !params[:search][:price][:min].empty?
              homes.where("price >= ?", params[:search][:price][:min])
            else
              homes
            end

    # Square Footage
    homes = if !params[:search][:square_footage][:max].empty? && !params[:search][:square_footage][:min].empty?
              homes.where("square_footage >= ? AND square_footage <= ?", params[:search][:square_footage][:min], params[:search][:square_footage][:max])
            elsif !params[:search][:square_footage][:max].empty?
              homes.where("square_footage <= ?", params[:search][:square_footage][:max])
            elsif !params[:search][:square_footage][:min].empty?
              homes.where("square_footage >= ?", params[:search][:square_footage][:min])
            else
              homes
            end
    # beds
    homes = if !params[:search][:beds][:max].empty? && !params[:search][:beds][:min].empty?
              homes.where("beds >= ? AND beds <= ?", params[:search][:beds][:min], params[:search][:beds][:max])
            elsif !params[:search][:beds][:max].empty?
              homes.where("beds <= ?", params[:search][:beds][:max])
            elsif !params[:search][:beds][:min].empty?
              homes.where("beds >= ?", params[:search][:beds][:min])
            else
              homes
            end

    # baths
    homes = if !params[:search][:baths][:max].empty? && !params[:search][:baths][:min].empty?
              homes.where("baths >= ? AND baths <= ?", params[:search][:baths][:min], params[:search][:baths][:max])
            elsif !params[:search][:baths][:max].empty?
              homes.where("baths <= ?", params[:search][:baths][:max])
            elsif !params[:search][:baths][:min].empty?
              homes.where("baths >= ?", params[:search][:baths][:min])
            else
              homes
            end
  end
end
