module ImdbTop250sHelper
  def random_movies(max)
    max.times.map {
      random = 1 + rand(250)
      ImdbTop250.find(random)
    }
  end
end
