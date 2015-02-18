sports = Category.create(name: 'sports')
cars = Category.create(name: cars)
rap_music = Category.create(name: 'rap_music')
pop_music = Category.create(name: 'pop_music')

sports.photos.create(name: "soccer", photo_url: "http://en.africatopsports.com/wp-content/uploads/2014/01/ronaldinho.jpg")
cars.photos.create(name: "subaru", photo_url: "http://www.ausmotive.com/pics/2013/Subaru-WRX-concept-02.jpg" )
rap_music.photos.create(name: "Rick Ross", photo_url: "http://www.mtv.com/shared/promoimages/bands/r/rick_ross/a-z/2014/rick_ross_wireimage.jpg"  )




sports.recommendations.create(url: "http://www.dailymail.com/sports")
