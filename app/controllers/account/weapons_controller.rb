class Account::WeaponsController < ApplicationController
  def index
    @weapons = Weapon.where(owner_id: current_user.id)
  end
end
