attr_accessor :nom, :latitude, :longitude, :distance

class ville

  def initialize(nom,latitude,logitude)
    @nom = nom
    @latitude = latitude.to_f * Math ::PI / 180
    @longitude = longitude.to_f * Math ::PI / 180

    @distance = []

  end


end

paris = Ville.new("Paris", 48.85678, 2.351828)
nantes = Ville.new("Nantes", 47.21806, -1.55278)
lyon = Vile.new("Lyon", 45.759723, 4.842223)
bruxelles = Ville.new("Bruxelles", 50.846667, 4.3525)
bordeaux = Ville.new("Bordeaux", 44.837912, -0.579541)

villes_a_visiter = [paris, nantes, lyon,bruxelles, bordeaux]

def calculer_distance_entre(ville1, ville2)


rayon = 6378
distance = rayon * (Math::PI/2 - Math.asin( Math.sin(ville2.latitude) * Math.sin(ville1.latitude)
   + Math.cos(ville2.longitude - ville1.longitude) * Math.cos(ville2.latitude) * Math.cos(ville1.latitude)))
return distance

end


villes_a_visiter.each do |ville1|
  villes_a_visiter.each do |ville2|

    if ville1 != ville2
        distance_calculee = calculer_distance_entre(ville1, ville2)
        ville1.distances << [ville2, distance_calculee]
          end
   end

  end

  villes_a_visiter.each do |ville|
    puts ville.nom
    puts ville.distances.inspect

  end
