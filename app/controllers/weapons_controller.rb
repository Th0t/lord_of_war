class WeaponsController < ApplicationController
  before_action :find_weapon, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @weapons_category = %w(pistols riffles knives heavy shotguns swords)
    @weapons = Weapon.all

    query_hash = query_hash_builder(params)

    if query_hash[:category].present?
      @weapons = @weapons.where(category: query_hash[:category])
    end

    if query_hash["min-price"].present?
      @weapons = @weapons.where("price >= ?", query_hash["min-price"].to_i)
    end

    if query_hash["max-price"].present?
      @weapons = @weapons.where("price <= ?", query_hash["max-price"].to_i)
    end

    if query_hash[:query].present?
      @weapons = @weapons.where("title LIKE ?", "%#{query_hash[:query]}%")
    end
  end

  def show
  end

  private

  def query_hash_builder(params_hash)
    query_hash = {}
    query_hash[:query] = params_hash[:query]
    query_hash["min-price"] = params_hash["min-price"]
    query_hash["max-price"] = params_hash["max-price"]
    query_hash[:category] = params_hash[:category]
    query_hash[:category] == "all" ? query_hash[:category] = "" : query_hash[:category] =   query_hash[:category]
    query_hash.delete_if { |k, value| value == "" }
    return query_hash
  end

  def find_weapon
    @weapon = Weapon.find(params[:id])
  end
end
