# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
                {
                    username: 'rubyonrails',
                    password: 'rubyonrails',
                    is_admin: true
                }
            ])
ImdbTop250.create([
                      {
                          imdbID: 'tt0111161',
                          title: 'The Shawshank Redemption'
                      },
                      {
                          imdbID: 'tt0068646',
                          title: 'The Godfather'
                      },
                      {
                          imdbID: 'tt0071562',
                          title: 'The Godfather: Part II'
                      },
                      {
                          imdbID: 'tt0468569',
                          title: 'The Dark Knight'
                      },
                      {
                          imdbID: 'tt0050083',
                          title: '12 Angry Men'
                      },
                      {
                          imdbID: 'tt0108052',
                          title: 'Schindler\'s List'
                      },
                      {
                          imdbID: 'tt0110912',
                          title: 'Pulp Fiction'
                      },
                      {
                          imdbID: 'tt0167260',
                          title: 'The Lord of the Rings: The Return of the King'
                      },
                      {
                          imdbID: 'tt0060196',
                          title: 'The Good, the Bad and the Ugly'
                      },
                      {
                          imdbID: 'tt0137523',
                          title: 'Fight Club'
                      },
                      {
                          imdbID: 'tt0120737',
                          title: 'The Lord of the Rings: The Fellowship of the Ring'
                      },
                      {
                          imdbID: 'tt0080684',
                          title: 'Star Wars: Episode V - The Empire Strikes Back'
                      },
                      {
                          imdbID: 'tt0109830',
                          title: 'Forrest Gump'
                      },
                      {
                          imdbID: 'tt1375666',
                          title: 'Inception'
                      },
                      {
                          imdbID: 'tt0167261',
                          title: 'The Lord of the Rings: The Two Towers'
                      },
                      {
                          imdbID: 'tt0073486',
                          title: 'One Flew Over the Cuckoo\'s Nest'
                      },
                      {
                          imdbID: 'tt0099685',
                          title: 'Goodfellas'
                      },
                      {
                          imdbID: 'tt0133093',
                          title: 'The Matrix'
                      },
                      {
                          imdbID: 'tt0047478',
                          title: 'Seven Samurai'
                      },
                      {
                          imdbID: 'tt0076759',
                          title: 'Star Wars: Episode IV - A New Hope'
                      },
                      {
                          imdbID: 'tt0317248',
                          title: 'City of God'
                      },
                      {
                          imdbID: 'tt0114369',
                          title: 'Se7en'
                      },
                      {
                          imdbID: 'tt0102926',
                          title: 'The Silence of the Lambs'
                      },
                      {
                          imdbID: 'tt0038650',
                          title: 'It\'s a Wonderful Life'
                      },
                      {
                          imdbID: 'tt0118799',
                          title: 'Life Is Beautiful'
                      },
                      {
                          imdbID: 'tt0114814',
                          title: 'The Usual Suspects'
                      },
                      {
                          imdbID: 'tt0110413',
                          title: 'Léon: The Professional'
                      },
                      {
                          imdbID: 'tt0245429',
                          title: 'Spirited Away'
                      },
                      {
                          imdbID: 'tt0120815',
                          title: 'Saving Private Ryan'
                      },
                      {
                          imdbID: 'tt0064116',
                          title: 'Once Upon a Time in the West'
                      },
                      {
                          imdbID: 'tt0120586',
                          title: 'American History X'
                      },
                      {
                          imdbID: 'tt0816692',
                          title: 'Interstellar'
                      },
                      {
                          imdbID: 'tt0034583',
                          title: 'Casablanca'
                      },
                      {
                          imdbID: 'tt0054215',
                          title: 'Psycho'
                      },
                      {
                          imdbID: 'tt0021749',
                          title: 'City Lights'
                      },
                      {
                          imdbID: 'tt0120689',
                          title: 'The Green Mile'
                      },
                      {
                          imdbID: 'tt1675434',
                          title: 'The Intouchables'
                      },
                      {
                          imdbID: 'tt0027977',
                          title: 'Modern Times'
                      },
                      {
                          imdbID: 'tt0082971',
                          title: 'Raiders of the Lost Ark'
                      },
                      {
                          imdbID: 'tt0047396',
                          title: 'Rear Window'
                      },
                      {
                          imdbID: 'tt0253474',
                          title: 'The Pianist'
                      },
                      {
                          imdbID: 'tt0407887',
                          title: 'The Departed'
                      },
                      {
                          imdbID: 'tt0103064',
                          title: 'Terminator 2: Judgment Day'
                      },
                      {
                          imdbID: 'tt0088763',
                          title: 'Back to the Future'
                      },
                      {
                          imdbID: 'tt2582802',
                          title: 'Whiplash'
                      },
                      {
                          imdbID: 'tt0172495',
                          title: 'Gladiator'
                      },
                      {
                          imdbID: 'tt0209144',
                          title: 'Memento'
                      },
                      {
                          imdbID: 'tt0482571',
                          title: 'The Prestige'
                      },
                      {
                          imdbID: 'tt0110357',
                          title: 'The Lion King'
                      },
                      {
                          imdbID: 'tt0078788',
                          title: 'Apocalypse Now'
                      },
                      {
                          imdbID: 'tt0078748',
                          title: 'Alien'
                      },
                      {
                          imdbID: 'tt0043014',
                          title: 'Sunset Boulevard'
                      },
                      {
                          imdbID: 'tt0057012',
                          title: 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb'
                      },
                      {
                          imdbID: 'tt0032553',
                          title: 'The Great Dictator'
                      },
                      {
                          imdbID: 'tt0095765',
                          title: 'Cinema Paradiso'
                      },
                      {
                          imdbID: 'tt0405094',
                          title: 'The Lives of Others'
                      },
                      {
                          imdbID: 'tt0095327',
                          title: 'Grave of the Fireflies'
                      },
                      {
                          imdbID: 'tt0050825',
                          title: 'Paths of Glory'
                      },
                      {
                          imdbID: 'tt1853728',
                          title: 'Django Unchained'
                      },
                      {
                          imdbID: 'tt0081505',
                          title: 'The Shining'
                      },
                      {
                          imdbID: 'tt0910970',
                          title: 'WALL·E'
                      },
                      {
                          imdbID: 'tt0169547',
                          title: 'American Beauty'
                      },
                      {
                          imdbID: 'tt1345836',
                          title: 'The Dark Knight Rises'
                      },
                      {
                          imdbID: 'tt0119698',
                          title: 'Princess Mononoke'
                      },
                      {
                          imdbID: 'tt0090605',
                          title: 'Aliens'
                      },
                      {
                          imdbID: 'tt0364569',
                          title: 'Oldboy'
                      },
                      {
                          imdbID: 'tt0087843',
                          title: 'Once Upon a Time in America'
                      },
                      {
                          imdbID: 'tt0051201',
                          title: 'Witness for the Prosecution'
                      },
                      {
                          imdbID: 'tt0082096',
                          title: 'Das Boot'
                      },
                      {
                          imdbID: 'tt0033467',
                          title: 'Citizen Kane'
                      },
                      {
                          imdbID: 'tt0053125',
                          title: 'North by Northwest'
                      },
                      {
                          imdbID: 'tt0052357',
                          title: 'Vertigo'
                      },
                      {
                          imdbID: 'tt0086190',
                          title: 'Star Wars: Episode VI - Return of the Jedi'
                      },
                      {
                          imdbID: 'tt0105236',
                          title: 'Reservoir Dogs'
                      },
                      {
                          imdbID: 'tt0112573',
                          title: 'Braveheart'
                      },
                      {
                          imdbID: 'tt0022100',
                          title: 'M'
                      },
                      {
                          imdbID: 'tt0180093',
                          title: 'Requiem for a Dream'
                      },
                      {
                          imdbID: 'tt5074352',
                          title: 'Dangal'
                      },
                      {
                          imdbID: 'tt0211915',
                          title: 'Amélie'
                      },
                      {
                          imdbID: 'tt0066921',
                          title: 'A Clockwork Orange'
                      },
                      {
                          imdbID: 'tt0986264',
                          title: 'Like Stars on Earth'
                      },
                      {
                          imdbID: 'tt0056172',
                          title: 'Lawrence of Arabia'
                      },
                      {
                          imdbID: 'tt0075314',
                          title: 'Taxi Driver'
                      },
                      {
                          imdbID: 'tt0036775',
                          title: 'Double Indemnity'
                      },
                      {
                          imdbID: 'tt0338013',
                          title: 'Eternal Sunshine of the Spotless Mind'
                      },
                      {
                          imdbID: 'tt0086879',
                          title: 'Amadeus'
                      },
                      {
                          imdbID: 'tt0056592',
                          title: 'To Kill a Mockingbird'
                      },
                      {
                          imdbID: 'tt0435761',
                          title: 'Toy Story 3'
                      },
                      {
                          imdbID: 'tt0093058',
                          title: 'Full Metal Jacket'
                      },
                      {
                          imdbID: 'tt0062622',
                          title: '2001: A Space Odyssey'
                      },
                      {
                          imdbID: 'tt0045152',
                          title: 'Singin\' in the Rain'
                      },
                      {
                          imdbID: 'tt0070735',
                          title: 'The Sting'
                      },
                      {
                          imdbID: 'tt0114709',
                          title: 'Toy Story'
                      },
                      {
                          imdbID: 'tt0040522',
                          title: 'Bicycle Thieves'
                      },
                      {
                          imdbID: 'tt0012349',
                          title: 'The Kid'
                      },
                      {
                          imdbID: 'tt0361748',
                          title: 'Inglourious Basterds'
                      },
                      {
                          imdbID: 'tt0208092',
                          title: 'Snatch'
                      },
                      {
                          imdbID: 'tt1187043',
                          title: '3 Idiots'
                      },
                      {
                          imdbID: 'tt5311514',
                          title: 'Your Name'
                      },
                      {
                          imdbID: 'tt0071853',
                          title: 'Monty Python and the Holy Grail'
                      },
                      {
                          imdbID: 'tt0119488',
                          title: 'L.A. Confidential'
                      },
                      {
                          imdbID: 'tt0476735',
                          title: 'My Father and My Son'
                      },
                      {
                          imdbID: 'tt0059578',
                          title: 'For a Few Dollars More'
                      },
                      {
                          imdbID: 'tt0086250',
                          title: 'Scarface'
                      },
                      {
                          imdbID: 'tt2106476',
                          title: 'The Hunt'
                      },
                      {
                          imdbID: 'tt0119217',
                          title: 'Good Will Hunting'
                      },
                      {
                          imdbID: 'tt0053604',
                          title: 'The Apartment'
                      },
                      {
                          imdbID: 'tt0042876',
                          title: 'Rashomon'
                      },
                      {
                          imdbID: 'tt1832382',
                          title: 'A Separation'
                      },
                      {
                          imdbID: 'tt0017136',
                          title: 'Metropolis'
                      },
                      {
                          imdbID: 'tt0097576',
                          title: 'Indiana Jones and the Last Crusade'
                      },
                      {
                          imdbID: 'tt0042192',
                          title: 'All About Eve'
                      },
                      {
                          imdbID: 'tt0055630',
                          title: 'Yojimbo'
                      },
                      {
                          imdbID: 'tt0372784',
                          title: 'Batman Begins'
                      },
                      {
                          imdbID: 'tt1049413',
                          title: 'Up'
                      },
                      {
                          imdbID: 'tt0053291',
                          title: 'Some Like It Hot'
                      },
                      {
                          imdbID: 'tt0040897',
                          title: 'The Treasure of the Sierra Madre'
                      },
                      {
                          imdbID: 'tt0105695',
                          title: 'Unforgiven'
                      },
                      {
                          imdbID: 'tt3315342',
                          title: 'Logan'
                      },
                      {
                          imdbID: 'tt0363163',
                          title: 'Downfall'
                      },
                      {
                          imdbID: 'tt0081398',
                          title: 'Raging Bull'
                      },
                      {
                          imdbID: 'tt0095016',
                          title: 'Die Hard'
                      },
                      {
                          imdbID: 'tt0041959',
                          title: 'The Third Man'
                      },
                      {
                          imdbID: 'tt0118849',
                          title: 'Children of Heaven'
                      },
                      {
                          imdbID: 'tt0113277',
                          title: 'Heat'
                      },
                      {
                          imdbID: 'tt3783958',
                          title: 'La La Land'
                      },
                      {
                          imdbID: 'tt0057115',
                          title: 'The Great Escape'
                      },
                      {
                          imdbID: 'tt0071315',
                          title: 'Chinatown'
                      },
                      {
                          imdbID: 'tt0044741',
                          title: 'Ikiru'
                      },
                      {
                          imdbID: 'tt0457430',
                          title: 'Pan\'s Labyrinth'
                      },
                      {
                          imdbID: 'tt0096283',
                          title: 'My Neighbor Totoro'
                      },
                      {
                          imdbID: 'tt2096673',
                          title: 'Inside Out'
                      },
                      {
                          imdbID: 'tt0089881',
                          title: 'Ran'
                      },
                      {
                          imdbID: 'tt0015864',
                          title: 'The Gold Rush'
                      },
                      {
                          imdbID: 'tt0047296',
                          title: 'On the Waterfront'
                      },
                      {
                          imdbID: 'tt1305806',
                          title: 'The Secret in Their Eyes'
                      },
                      {
                          imdbID: 'tt3170832',
                          title: 'Room'
                      },
                      {
                          imdbID: 'tt0050212',
                          title: 'The Bridge on the River Kwai'
                      },
                      {
                          imdbID: 'tt0083658',
                          title: 'Blade Runner'
                      },
                      {
                          imdbID: 'tt0347149',
                          title: 'Howl\'s Moving Castle'
                      },
                      {
                          imdbID: 'tt1255953',
                          title: 'Incendies'
                      },
                      {
                          imdbID: 'tt0055031',
                          title: 'Judgment at Nuremberg'
                      },
                      {
                          imdbID: 'tt0050976',
                          title: 'The Seventh Seal'
                      },
                      {
                          imdbID: 'tt0120735',
                          title: 'Lock, Stock and Two Smoking Barrels'
                      },
                      {
                          imdbID: 'tt0031679',
                          title: 'Mr. Smith Goes to Washington'
                      },
                      {
                          imdbID: 'tt0112641',
                          title: 'Casino'
                      },
                      {
                          imdbID: 'tt0268978',
                          title: 'A Beautiful Mind'
                      },
                      {
                          imdbID: 'tt0060107',
                          title: 'Andrei Rublev'
                      },
                      {
                          imdbID: 'tt0080678',
                          title: 'The Elephant Man'
                      },
                      {
                          imdbID: 'tt0050986',
                          title: 'Wild Strawberries'
                      },
                      {
                          imdbID: 'tt0434409',
                          title: 'V for Vendetta'
                      },
                      {
                          imdbID: 'tt0993846',
                          title: 'The Wolf of Wall Street'
                      },
                      {
                          imdbID: 'tt0017925',
                          title: 'The General'
                      },
                      {
                          imdbID: 'tt1291584',
                          title: 'Warrior'
                      },
                      {
                          imdbID: 'tt0116231',
                          title: 'The Bandit'
                      },
                      {
                          imdbID: 'tt0117951',
                          title: 'Trainspotting'
                      },
                      {
                          imdbID: 'tt0018455',
                          title: 'Sunrise'
                      },
                      {
                          imdbID: 'tt1205489',
                          title: 'Gran Torino'
                      },
                      {
                          imdbID: 'tt0046912',
                          title: 'Dial M for Murder'
                      },
                      {
                          imdbID: 'tt2119532',
                          title: 'Hacksaw Ridge'
                      },
                      {
                          imdbID: 'tt0077416',
                          title: 'The Deer Hunter'
                      },
                      {
                          imdbID: 'tt0118715',
                          title: 'The Big Lebowski'
                      },
                      {
                          imdbID: 'tt0116282',
                          title: 'Fargo'
                      },
                      {
                          imdbID: 'tt0031381',
                          title: 'Gone with the Wind'
                      },
                      {
                          imdbID: 'tt0167404',
                          title: 'The Sixth Sense'
                      },
                      {
                          imdbID: 'tt0046438',
                          title: 'Tokyo Story'
                      },
                      {
                          imdbID: 'tt0084787',
                          title: 'The Thing'
                      },
                      {
                          imdbID: 'tt0266543',
                          title: 'Finding Nemo'
                      },
                      {
                          imdbID: 'tt0405508',
                          title: 'Rang De Basanti'
                      },
                      {
                          imdbID: 'tt0477348',
                          title: 'No Country for Old Men'
                      },
                      {
                          imdbID: 'tt0019254',
                          title: 'The Passion of Joan of Arc'
                      },
                      {
                          imdbID: 'tt1280558',
                          title: 'A Wednesday'
                      },
                      {
                          imdbID: 'tt0061512',
                          title: 'Cool Hand Luke'
                      },
                      {
                          imdbID: 'tt0032976',
                          title: 'Rebecca'
                      },
                      {
                          imdbID: 'tt0892769',
                          title: 'How to Train Your Dragon'
                      },
                      {
                          imdbID: 'tt0469494',
                          title: 'There Will Be Blood'
                      },
                      {
                          imdbID: 'tt0266697',
                          title: 'Kill Bill: Vol. 1'
                      },
                      {
                          imdbID: 'tt0091251',
                          title: 'Come and See'
                      },
                      {
                          imdbID: 'tt0978762',
                          title: 'Mary og Max'
                      },
                      {
                          imdbID: 'tt0758758',
                          title: 'Into the Wild'
                      },
                      {
                          imdbID: 'tt2267998',
                          title: 'Gone Girl'
                      },
                      {
                          imdbID: 'tt0079470',
                          title: 'Life of Brian'
                      },
                      {
                          imdbID: 'tt0025316',
                          title: 'It Happened One Night'
                      },
                      {
                          imdbID: 'tt1130884',
                          title: 'Shutter Island'
                      },
                      {
                          imdbID: 'tt0091763',
                          title: 'Platoon'
                      },
                      {
                          imdbID: 'tt0395169',
                          title: 'Hotel Rwanda'
                      },
                      {
                          imdbID: 'tt1979320',
                          title: 'Rush'
                      },
                      {
                          imdbID: 'tt3011894',
                          title: 'Wild Tales'
                      },
                      {
                          imdbID: 'tt0074958',
                          title: 'Network'
                      },
                      {
                          imdbID: 'tt0046268',
                          title: 'The Wages of Fear'
                      },
                      {
                          imdbID: 'tt0107207',
                          title: 'I fars navn'
                      },
                      {
                          imdbID: 'tt0092005',
                          title: 'Stand by Me'
                      },
                      {
                          imdbID: 'tt0053198',
                          title: 'The 400 Blows'
                      },
                      {
                          imdbID: 'tt1895587',
                          title: 'Spotlight'
                      },
                      {
                          imdbID: 'tt1392190',
                          title: 'Mad Max: Fury Road'
                      },
                      {
                          imdbID: 'tt2278388',
                          title: 'The Grand Budapest Hotel'
                      },
                      {
                          imdbID: 'tt0374887',
                          title: 'Munna Bhai M.B.B.S.'
                      },
                      {
                          imdbID: 'tt2024544',
                          title: '12 Years a Slave'
                      },
                      {
                          imdbID: 'tt0052618',
                          title: 'Ben-Hur'
                      },
                      {
                          imdbID: 'tt0060827',
                          title: 'Persona'
                      },
                      {
                          imdbID: 'tt0064115',
                          title: 'Butch Cassidy and the Sundance Kid'
                      },
                      {
                          imdbID: 'tt0405159',
                          title: 'Million Dollar Baby'
                      },
                      {
                          imdbID: 'tt0245712',
                          title: 'Amores Perros'
                      },
                      {
                          imdbID: 'tt0107290',
                          title: 'Jurassic Park'
                      },
                      {
                          imdbID: 'tt0353969',
                          title: 'Memories of Murder'
                      },
                      {
                          imdbID: 'tt0033870',
                          title: 'The Maltese Falcon'
                      },
                      {
                          imdbID: 'tt0050783',
                          title: 'The Nights of Cabiria'
                      },
                      {
                          imdbID: 'tt0079944',
                          title: 'Stalker'
                      },
                      {
                          imdbID: 'tt0093779',
                          title: 'The Princess Bride'
                      },
                      {
                          imdbID: 'tt0120382',
                          title: 'The Truman Show'
                      },
                      {
                          imdbID: 'tt1028532',
                          title: 'Hachi: A Dog\'s Tale'
                      },
                      {
                          imdbID: 'tt0087544',
                          title: 'Nausicaä of the Valley of the Wind'
                      },
                      {
                          imdbID: 'tt0073707',
                          title: 'Sholay'
                      },
                      {
                          imdbID: 'tt2488496',
                          title: 'Star Wars: The Force Awakens'
                      },
                      {
                          imdbID: 'tt0112471',
                          title: 'Before Sunrise'
                      },
                      {
                          imdbID: 'tt0032551',
                          title: 'The Grapes of Wrath'
                      },
                      {
                          imdbID: 'tt0242519',
                          title: 'Hera Pheri'
                      },
                      {
                          imdbID: 'tt1201607',
                          title: 'Harry Potter and the Deathly Hallows: Part 2'
                      },
                      {
                          imdbID: 'tt0075148',
                          title: 'Rocky'
                      },
                      {
                          imdbID: 'tt0052311',
                          title: 'Touch of Evil'
                      },
                      {
                          imdbID: 'tt1392214',
                          title: 'Prisoners'
                      },
                      {
                          imdbID: 'tt0075686',
                          title: 'Annie Hall'
                      },
                      {
                          imdbID: 'tt0083987',
                          title: 'Gandhi'
                      },
                      {
                          imdbID: 'tt0046911',
                          title: 'Diabolique'
                      },
                      {
                          imdbID: 'tt0246578',
                          title: 'Donnie Darko'
                      },
                      {
                          imdbID: 'tt0264464',
                          title: 'Catch Me If You Can'
                      },
                      {
                          imdbID: 'tt0198781',
                          title: 'Monsters, Inc.'
                      },
                      {
                          imdbID: 'tt0440963',
                          title: 'The Bourne Ultimatum'
                      },
                      {
                          imdbID: 'tt0088247',
                          title: 'The Terminator'
                      },
                      {
                          imdbID: 'tt0056801',
                          title: '8½'
                      },
                      {
                          imdbID: 'tt0032138',
                          title: 'The Wizard of Oz'
                      },
                      {
                          imdbID: 'tt0107048',
                          title: 'Groundhog Day'
                      },
                      {
                          imdbID: 'tt0072684',
                          title: 'Barry Lyndon'
                      },
                      {
                          imdbID: 'tt0113247',
                          title: 'La Haine'
                      },
                      {
                          imdbID: 'tt3896198',
                          title: 'Guardians of the Galaxy Vol. 2'
                      },
                      {
                          imdbID: 'tt0114746',
                          title: 'Twelve Monkeys'
                      },
                      {
                          imdbID: 'tt0073195',
                          title: 'Jaws'
                      },
                      {
                          imdbID: 'tt0338564',
                          title: 'Infernal Affairs'
                      },
                      {
                          imdbID: 'tt0036868',
                          title: 'The Best Years of Our Lives'
                      },
                      {
                          imdbID: 'tt1954470',
                          title: 'Gangs of Wasseypur'
                      },
                      {
                          imdbID: 'tt0058946',
                          title: 'The Battle of Algiers'
                      },
                      {
                          imdbID: 'tt0072890',
                          title: 'Dog Day Afternoon'
                      },
                      {
                          imdbID: 'tt0109117',
                          title: 'Andaz Apna Apna'
                      },
                      {
                          imdbID: 'tt1454029',
                          title: 'The Help'
                      },
                      {
                          imdbID: 'tt0101414',
                          title: 'Beauty and the Beast'
                      },
                      {
                          imdbID: 'tt0056687',
                          title: 'What Ever Happened to Baby Jane?'
                      },
                      {
                          imdbID: 'tt0118694',
                          title: 'In the Mood for Love'
                      },
                      {
                          imdbID: 'tt0325980',
                          title: 'Pirates of the Caribbean: The Curse of the Black Pearl'
                      },
                      {
                          imdbID: 'tt4430212',
                          title: 'Drishyam'
                      },
                      {
                          imdbID: 'tt1821480',
                          title: 'Kahaani'
                      }
                  ])