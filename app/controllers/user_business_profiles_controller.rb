class UserBusinessProfilesController < ApplicationController
  before_action :set_user_business_profile, only: [:show, :edit, :update, :destroy]

  # GET /user_business_profiles
  # GET /user_business_profiles.json
  def index
    @user_business_profiles = UserBusinessProfile.all
  end

  # GET /user_business_profiles/1
  # GET /user_business_profiles/1.json
  def show
  end

  # GET /user_business_profiles/new
  def new
    @user_business_profile = UserBusinessProfile.new
  end

  # GET /user_business_profiles/1/edit
  def edit
  end

  # POST /user_business_profiles
  # POST /user_business_profiles.json
  def create
    @user_business_profile = UserBusinessProfile.new(user_business_profile_params)

    respond_to do |format|
      if @user_business_profile.save
        format.html { redirect_to @user_business_profile, notice: 'User business profile was successfully created.' }
        format.json { render :show, status: :created, location: @user_business_profile }
      else
        format.html { render :new }
        format.json { render json: @user_business_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_business_profiles/1
  # PATCH/PUT /user_business_profiles/1.json
  def update
    respond_to do |format|
      if @user_business_profile.update(user_business_profile_params)
        format.html { redirect_to @user_business_profile, notice: 'User business profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_business_profile }
      else
        format.html { render :edit }
        format.json { render json: @user_business_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_business_profiles/1
  # DELETE /user_business_profiles/1.json
  def destroy
    @user_business_profile.destroy
    respond_to do |format|
      format.html { redirect_to user_business_profiles_url, notice: 'User business profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_business_profile
      @user_business_profile = UserBusinessProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_business_profile_params
      params.require(:user_business_profile).permit(:business_profile_id, :user_id, :is_owner, :position)
    end
end
