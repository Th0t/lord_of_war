
  def number_of_days(booking)
    Math.round(booking.end_date - booking.start_date)
  end

  def total_price(booking)
    @price = Weapon.find(booking.weapon_id).price
    @total_price = @price * number_of_days(booking)
  end
