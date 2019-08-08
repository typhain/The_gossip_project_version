class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    u = User.new
    u.email = params[:email]
    u.password = params[:password]
    u.city_id = 20
    u.save
    # a = City.find_by(:name => params[:city])
    # puts "@" * 100
    # puts a.blank?
    # puts "@" * 100

    # if a.blank? == true
    #   puts "@" * 100
    #   puts "C'est BLANK"
    #   puts "@" * 100
    #   City.create(:name => params[:city])
    #   a2 = City.find_by(:name => params[:city]).id
    #   u.city_id = a2
    # else
    #   puts "@" * 100
    #   puts "C'est PAS BLANK"
    #   puts "@" * 100
    #   a = City.find_by(:name => params[:city]).id
    #   puts "#" * 100
    #   puts a
    #   puts "#" * 100
    #   u.city_id = a
    #   u.save
    # end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
