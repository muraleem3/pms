class GoogleMapProcessor
  def self.build_map_data(properties)
    map_properties = properties.select{ |property| property.latitude.present? and property.longitude.present? }
    Gmaps4rails.build_markers(map_properties) do |property, marker|
      marker.lat property.latitude
      marker.lng property.longitude
      marker.infowindow "#{property.id}: #{property.full_address}"
    end
  end
end	