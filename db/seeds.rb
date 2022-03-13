Photo.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE PHOTOS_id_seq RESTART WITH 1")

AdminUser.create!(email: 'ferleiva@instapets.com', password: '123456')
User.create!(name: 'Katto', email: 'katto@meow.com', password: '123456')
User.create!(name: 'Mahia', email: 'mahia@guau.com', password: '123456')

Photo.create!(
  name: 'Fish', 
  url: 'https://static.depositphotos.com/storage/file_upload/file_49cd2760ca353aca55c0d1061cd74a05.jpg?1586942806', 
  description: 'Some Fish', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Beautyflies', 
  url: 'https://static.depositphotos.com/storage/file_upload/file_60947eef99645aaba70466f81fdf3953.jpg?1586942770',
  description: 'Cute bugs', 
  license: 'copyright',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Abstract', 
  url: 'https://st3.depositphotos.com/4758989/14194/v/450/depositphotos_141944676-stock-illustration-storm-in-a-light-bulb.jpg', 
  description: 'This is not an animal', 
  license: 'creative_commons',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Monkey smile', 
  url: 'https://static9.depositphotos.com/1594920/1088/i/950/depositphotos_10880072-stock-photo-mixed-breed-monkey-between-chimpanzee.jpg', 
  description: 'So happy, i love my friend', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'WTF', 
  url: 'https://st3.depositphotos.com/7477192/32961/i/950/depositphotos_329614052-stock-photo-lycan-werewolf-isolated-on-white.jpg', 
  description: 'Big foot spotted near Buenos Aires', 
  license: 'creative_commons',
  visibility: 'priv',
  user_id: 1 )
Photo.create!(
  name: 'Selfie cat!', 
  url: 'https://st2.depositphotos.com/5482604/8042/i/950/depositphotos_80421608-stock-photo-funny-cats-self-picture.jpg', 
  description: 'This is definitely not Photoshop', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Bad buddy', 
  url: 'https://st2.depositphotos.com/5482604/8041/i/950/depositphotos_80418548-stock-photo-cat-holding-a-banner-offender.jpg', 
  description: '', 
  license: 'copyleft',
  visibility: 'priv',
  user_id: 3 )
Photo.create!(
  name: 'Friendship', 
  url: 'https://st3.depositphotos.com/2714617/17591/i/950/depositphotos_175911000-stock-photo-pets-store-signboard-with-cat.jpg', 
  description: '', 
  license: 'copyleft',
  visibility: 'priv',
  user_id: 2 )
Photo.create!(
  name: 'Weekend', 
  url: 'https://st2.depositphotos.com/4164793/7385/i/950/depositphotos_73858381-stock-photo-dog-mops.jpg', 
  description: '', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Welcome home!', 
  url: 'https://st.depositphotos.com/1146092/1284/i/950/depositphotos_12848412-stock-photo-dog-welcome-home.jpg', 
  description: 'Love this', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Zebra', 
  url: 'data:image/jpeg;base64,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', 
  description: '', 
  license: 'copyleft',
  visibility: 'priv',
  user_id: 2 )
Photo.create!(
  name: 'Wings', 
  url: 'https://cdn.pixabay.com/photo/2018/08/12/16/59/parrot-3601194__340.jpg', 
  description: 'Beautifull bird', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
Photo.create!(
  name: 'Resting a bit', 
  url: 'https://tn.com.ar/resizer/IK4skd4nqi27No8i0yrJrlACAR0=/arc-anglerfish-arc2-prod-artear/public/SZK3LADFC5BC3OTFCY3CQPQBVE.png', 
  description: 'Big armadillo', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 2 )
Photo.create!(
  name: 'Rare plague', 
  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4YszBDL3vhggbehiprVp6AowpPOldMJXWzg&usqp=CAU', 
  description: '', 
  license: 'copyleft',
  visibility: 'pub',
  user_id: 1 )
