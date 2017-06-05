class MapsController < ApplicationController
  def view
     @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
       marker.infowindow user.description
       marker.picture({
       "url" => "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
       "width" =>  32,
       "height" => 32})
       marker.json({ title: user.title })
    end
  end
end
