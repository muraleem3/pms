module PropertiesHelper
  def get_selected_location(loc_code)
    if loc_code == 'Hyderabad'
      return 'Hyderabd'
    elsif loc_code == 'Chennai'
      return 'Chennai'
    elsif loc_code == 'Banglore'
      return 'Banglore'
    elsif loc_code == 'Mumbai'
      return 'Mumbai'
    elsif loc_code == 'Delhi'
      return 'Delhi'
    elsif loc_code == 'Kolkata'     
      return 'Kolkata' 
    elsif loc_code == 'Other'     
      return 'Other'
    end
  end
  def get_selected_propertytype(prop_type)

    # Residential
    if prop_type == 'res_indhouse'
      return 'Independent House'
    elsif prop_type == 'res_aptmnt'
      return 'Apartment'
    elsif prop_type == 'res_villa'
      return 'Independent Villa'
    elsif prop_type == 'res_flat'
      return 'Flat'
    elsif prop_type == 'res_fmhouse'
      return 'Farm House'
    elsif prop_type == 'res_other'
      return 'Other Residential'
    # Commercial
    elsif prop_type == 'com_space'
      return 'Commercial Space'
    elsif prop_type == 'com_office'
      return 'Office Space'
    elsif prop_type == 'com_itpark'
      return 'IT/Software Technology Park'
    elsif prop_type == 'com_indspace'
      return 'Industrial Space'
    elsif prop_type == 'com_whouse'
      return 'Warehouse'
    elsif prop_type == 'com_hotel'
      return 'Hotel/Resort'
    # Land
    elsif prop_type == 'lnd_resland'
      return 'Residential Land'
    elsif prop_type == 'lnd_comland'
      return 'Commercial Land'
    elsif prop_type == 'lnd_indland'
      return 'Industrial Land'
    elsif prop_type == 'lnd_agriland'
      return 'Agricultural Land'
    elsif prop_type == 'lnd_fmhouse'
      return 'Farm House Land'
    elsif prop_type == 'lnd_land'
      return 'Land'
    # Rent/Lease
    elsif prop_type == 'rl_aptmnt'
      return 'Apartments/Flats'
    elsif prop_type == 'rl_indhouse'
      return 'Individual Housesd'
    elsif prop_type == 'rl_villas'
      return 'Villas'
    elsif prop_type == 'rl_saptmn'
      return 'Serviced Apartments'
    elsif prop_type == 'rl_officee'
      return 'Office Space'
    elsif prop_type == 'rl_indspace'
      return 'Industrial Space'
    end
  end
  def get_selected_area_measure(area_code)
    if area_code == 'Sq.Ft'
      return 'Sq.Ft'
    elsif area_code == 'Sq.Yards'
      return 'Sq.Yards'
    elsif area_code == 'Sq.Meter'
      return 'Sq.Meter'
    elsif area_code == 'Acres'
      return 'Acres'
    elsif area_code == 'Hectares' 
      return 'Hectares'    
    end
  end
  def get_selected_bhk(bhk_code)
    if bhk_code == 1
      return 1
    elsif  bhk_code == 2
      return 2
    elsif  bhk_code == 3
      return 3 
    elsif  bhk_code == 4
      return 4 
    elsif  bhk_code == 5
      return 5 
    elsif  bhk_code == 6
      return 6
    elsif  bhk_code == 7
      return 7 
    elsif  bhk_code == 8
      return 8 
    elsif  bhk_code == 9
      return 9
    elsif  bhk_code == 10
      return 10 
    end
  end
  def get_selected_floors(floor_code)
    if floor_code == 1
      return 1
    elsif  floor_code == 2
      return 2
    elsif floor_code == 3
      return 3 
    elsif floor_code == 4
      return 4 
    elsif floor_code == 5
      return 5 
    elsif floor_code == 6
      return 6
    elsif floor_code == 7
      return 7 
    elsif  floor_code == 8
      return 8 
    elsif  floor_code == 9
      return 9
    elsif  floor_code == 10
      return 10 
    end
  end
  def get_selected_facing(facing_code)
    if facing_code == 'east'
      return 'EAST'
    elsif  facing_code == 'west'  
      return 'WEST'
    elsif  facing_code == 'south'
      return 'SOUTH'
    elsif  facing_code == 'north'
      return 'NORTH'
    end
  end
  def get_selected_carparking(parking_code)
    if parking_code == 1
      return 1
    elsif  parking_code == 2
      return 2
    elsif  parking_code == 3
      return 3
    end
  end
  def get_selected_yesorno(boolean_code)
    if boolean_code == 1
      return 'YES'
    elsif boolean_code == 2
      return 'NO'
    end
  end
  def get_selected_locality(locality_code)
    if locality_code == 'Kukatpally'
      return 'Kukatpally'
    elsif locality_code =='Hitech-City' 
      return 'Hitech-City'
    elsif locality_code == 'AmeerPet'
      return 'AmeerPet'
    elsif locality_code == 'Guindy'
      return 'Guindy'
    elsif locality_code == 'Velachery'
      return 'Velachery'
    elsif locality_code == 'Tambaram'
      return 'Tambaram'
    elsif locality_code == 'Marathahalli'
      return 'Marathahalli'
    elsif locality_code == 'Whitefield'
      return 'Whitefield'
    elsif locality_code == 'Malleshwaram'
      return 'Malleshwaram'        
    end
  end

end
