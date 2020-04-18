class PagesController < ApplicationController
  def ticeting_and_pricing
    @meta_description_custom = " - Ticket Price - Harga - Rules - Peraturan"
  end

  def ice_mate_pass
    @meta_description_custom = " - Ice Mate - Membership"
  end

  def facilities
    @meta_description_custom = " - Facilities"
  end

  def academy
    @meta_description_custom = " - Academy"
  end
end
