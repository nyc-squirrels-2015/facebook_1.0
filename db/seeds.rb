sports = Category.create(name: 'sports')
cars = Category.create(name: cars)
rap_music = Category.create(name: 'rap_music')
techno_music = Category.create(name: 'techno_music')
meditation = Category.create(name: 'Meditation')

sports.photos.create(name: "soccer", photo_url: "http://en.africatopsports.com/wp-content/uploads/2014/01/ronaldinho.jpg")
cars.photos.create(name: "subaru", photo_url: "http://www.ausmotive.com/pics/2013/Subaru-WRX-concept-02.jpg" )
rap_music.photos.create(name: "Rick Ross", photo_url: "http://www.mtv.com/shared/promoimages/bands/r/rick_ross/a-z/2014/rick_ross_wireimage.jpg"  )
techno_music.photos.create(name: "Luciano", photo_url: "http://i.ytimg.com/vi/EXQwfz7X8mo/maxresdefault.jpg"  )
meditation.photos.create(name: "Dalai Lama", photo_url: "http://www.tibetanreview.net/wp-content/uploads/2014/09/Dalai-Lama-pic-1.jpg"  )


sports.photos.create(name: "soccer", photo_url: "http://news.bbcimg.co.uk/media/images/68765000/jpg/_68765342_fabregas_getty2.jpg")
cars.photos.create(name: "ferrari", photo_url: "http://blogs-images.forbes.com/agoodman/files/2014/11/2014-ferrari-laferrari-photo-504428-s-1280x7821.jpg" )
rap_music.photos.create(name: "French Montana", photo_url: "http://a.abcnews.com/images/Entertainment/x17_khloe_kardashian_ml_140411_16x9_608.jpg"  )
techno_music.photos.create(name: "Marco Carola", photo_url: "http://i.ytimg.com/vi/guh324h-Nx8/maxresdefault.jpg")
meditation.photos.create(name: "Zen", photo_url: "http://learningmeditation.com/RotationImages/RESTORE_000014185704Resized.jpg
")

sports.photos.create(name: "Cristiano Ronaldo", photo_url: "http://static.goal.com/399400/399461_heroa.jpg")
cars.photos.create(name: "BMW", photo_url: "http://image.motortrend.com/f/roadtests/coupes/1310_2014_bmw_2_series_coupe_first_look/61255755/2014-bmw-2-series-coupe-front-three-quarter.jpg" )
rap_music.photos.create(name: "Kanye West", photo_url: "https://consequenceofsound.files.wordpress.com/2014/09/kanye-2014.jpg?w=1200"  )
techno_music.photos.create(name: "On the mix", photo_url: "http://images.atelier.net/sites/default/files/imagecache/scale_crop_587_310/blog/417832/atelier-platines.jpg")
meditation.photos.create(name: "Zen", photo_url: "http://d1fkw8life356y.cloudfront.net/content/wp-content/uploads/2014/03/What-is-Mindfulness-Meditation.jpg
")


sports.recommendations.create(url: "http://www.arsenal.com", name: "Cool sports site")
sports.recommendations.create(url: "http://www.arsenal.com", name: "Best Team in the world")
cars.recommendations.create(url: "http://motortrend.com", name: "If you like cars, because I know you do")
cars.recommendations.create(url: "http://www.dupontregistry.com/", name: "Nice cars dude !")
rap_music.recommendations.create(url: "http://rap.genius.com/", name: "Get to know every Rap lyrics")
rap_music.recommendations.create(url: "http://www.hiphopdx.com/index/news", name: "Get to know every Rap news")
meditation.recommendations.create(url: "http://zencephalon.com/index", name: "Matt Bunday's website")
meditation.recommendations.create(url: "http://siyli.org/", name: "Search inside yourself")
techno_music.recommendations.create(url: "http://www.residentadvisor.net/", name: "Look for the best djs in your town")
techno_music.recommendations.create(url: "http://youtube.com", name: "Watch cool dj sets")
