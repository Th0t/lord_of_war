class WeaponsController < ApplicationController
  before_action :find_weapon, only: [:show]
  skip_before_action :authenticate_user!, only:

  def show
  end

  private

  def find_weapon
    @weapon = Weapon.find(params[:id])
  end

end
