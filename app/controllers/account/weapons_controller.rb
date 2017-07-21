class Account::WeaponsController < ApplicationController
  def index
    @weapons = Weapon.where(owner_id: current_user.id)
  end

  def new
    @weapon = Weapon.new
  end

  def create
   @weapon = Weapon.new(weapon_params)
   @weapon.owner_id = current_user.id
   if @weapon.save
    redirect_to weapon_path(@weapon)
  else
    render :new
  end
 end

 private

 def weapon_params
  params.require(:weapon).permit(:title, :description, :category, :price, :availability, :photo, :photo_cache)
end

end
