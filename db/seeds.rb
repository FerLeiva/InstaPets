Photo.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE PHOTOS_id_seq RESTART WITH 1")

Photo.create!(
  name: 'Fish', 
  url: 'https://static.depositphotos.com/storage/file_upload/file_49cd2760ca353aca55c0d1061cd74a05.jpg?1586942806', 
  description: 'Some Fish', 
  license: 'copyleft')
Photo.create!(
  name: 'Beautyflies', 
  url: 'https://static.depositphotos.com/storage/file_upload/file_60947eef99645aaba70466f81fdf3953.jpg?1586942770',
  description: 'Cute bugs', 
  license: 'copyright')
Photo.create!(
  name: 'Abstract', 
  url: 'https://st3.depositphotos.com/4758989/14194/v/450/depositphotos_141944676-stock-illustration-storm-in-a-light-bulb.jpg', 
  description: 'This is not an animal', 
  license: 'copyleft')
Photo.create!(
  name: 'Monkey smile', 
  url: 'https://static9.depositphotos.com/1594920/1088/i/950/depositphotos_10880072-stock-photo-mixed-breed-monkey-between-chimpanzee.jpg', 
  description: 'So happy, i love my friend', 
  license: 'copyleft')
Photo.create!(
  name: 'WTF', 
  url: 'https://st3.depositphotos.com/7477192/32961/i/950/depositphotos_329614052-stock-photo-lycan-werewolf-isolated-on-white.jpg', 
  description: 'Big foot spotted near Buenos Aires', 
  license: 'creative_commons')
Photo.create!(
  name: 'Selfie cat!', 
  url: 'https://st2.depositphotos.com/5482604/8042/i/950/depositphotos_80421608-stock-photo-funny-cats-self-picture.jpg', 
  description: 'This is definitely not Photoshop', 
  license: 'copyleft')
Photo.create!(
  name: 'Bad buddy', 
  url: 'https://st2.depositphotos.com/5482604/8041/i/950/depositphotos_80418548-stock-photo-cat-holding-a-banner-offender.jpg', 
  description: '', 
  license: 'copyleft')
Photo.create!(
  name: 'Friendship', 
  url: 'https://st3.depositphotos.com/2714617/17591/i/950/depositphotos_175911000-stock-photo-pets-store-signboard-with-cat.jpg', 
  description: '', 
  license: 'copyleft')
Photo.create!(
  name: 'Weekend', 
  url: 'https://st2.depositphotos.com/4164793/7385/i/950/depositphotos_73858381-stock-photo-dog-mops.jpg', 
  description: '', 
  license: 'copyleft')
Photo.create!(
  name: 'Welcome home!', 
  url: 'https://st.depositphotos.com/1146092/1284/i/950/depositphotos_12848412-stock-photo-dog-welcome-home.jpg', 
  description: 'Love this', 
  license: 'copyleft')
