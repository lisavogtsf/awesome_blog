# # # ## To avoid duplicates after you pull a new db file, EITHER
# # # ## selectively uncomment the items you want to add and run $rake db:seed
# # # ## OR
# # # ## disconnect from your database (stop rails server, quit PG Commander)
# # # ## uncomment all commands
# # # ## run $rake db:reset, which will drop all contents of the current database
# # # ## and remake your datbase for you using the db/seeds.rb file

# # # # Create users

lisa = User.create({first_name: "Lisa", last_name: "Vogt", email: "lisavogt.sf@gmail.com"})
# jesse = User.create({first_name: "Jesse", last_name: "Moore", email: "moore.jesseb@gmail.com"})
angga = User.create({first_name: "Angga", last_name: "Putra", email: "angga.w.putra@gmail.com"})
will = User.create({first_name: "Will", last_name: "Curotto", email: "WRONGADDRESS@AOL.COM"})
# mark = User.create({first_name: "Mark", last_name: "Centoni", email: "marklc44@gmail.com"})


# # # # Find users and save to variables

lisa = User.find_by_first_name("Lisa")
jesse = User.find_by_first_name("Jesse")
angga = User.find_by_first_name("Angga")
mark = User.find_by_first_name("Mark")
will = User.find_by_first_name("Will")

# # # # # Pages, either About or Contact

mark.pages.create({title: "About", content: "I am a whiskey afficionado."})
mark.pages.create({title: "Contact", content: "my email address is marklc44@gmail.com"})
jesse.pages.create({title: "About", content: "I love Subversion because I used it when I worked on video games."})
jesse.pages.create({title: "Contact", content: "Contact me by owl, please."})
lisa.pages.create({title: "About", content: "I was born in Brazil."})
lisa.pages.create({title: "Contact", content: "Call me maybe."})
will.pages.create({title: "About", content: "I live in the East Bay."})
will.pages.create({title: "Contact", content: "Sorry, my email address didn't make it to the student contact form."})
angga.pages.create({title: "About", content: "I make awesome mockups, and my coding is pretty awesome too."})
angga.pages.create({title: "Contact", content: "Reach me by phone"})

# # # # ## Posts

will.posts.create({title: "Done It", content: "The new best thing for Scotch lovers. Austin bespoke dreamcatcher sartorial, nulla hashtag accusamus Tumblr VHS assumenda tempor duis fixie. Meh dreamcatcher iPhone pour-over. Deep v freegan Intelligentsia, reprehenderit dolor 8-bit yr vegan iPhone ethical. Retro dreamcatcher farm-to-table tousled. Craft beer magna Carles post-ironic nesciunt consectetur, dreamcatcher fap incididunt next level vero. Laboris ethical exercitation flannel leggings. IPhone street art odio gluten-free viral, deep v church-key Carles in freegan put a bird on it swag."})
will.posts.create({title: "Angry birds", content: "Selvage dolore sartorial ethical, Godard chillwave aliqua odio. Ullamco +1 retro, deep v Pitchfork cray actually Wes Anderson officia irony accusamus tousled. Wayfarers stumptown voluptate, laboris keytar meggings deserunt irony. Banjo biodiesel dreamcatcher, meggings food truck occaecat fanny pack in. DIY tousled fanny pack nisi, Tonx pickled drinking vinegar synth. Blue Bottle Odd Future reprehenderit, aesthetic Brooklyn velit church-key voluptate Kickstarter. Voluptate YOLO lomo messenger bag."})
angga.posts.create({title: "sci fi is cool", content: "Black tie...Whenever I wear this, something bad always happens. River, you know my name. You whispered my name in my ear! There's only one reason I would ever tell anyone my name. There's only one time I could... There was a war. A Time War. The Last Great Time War. My people fought a race called the Daleks, for the sake of all creation. And they lost. We lost. Everyone lost. They're all gone now. My family. My friends. Even that sky. Please, when Torchwood comes to write my complete history, don't tell people I travelled through time and space with her mother!"})
angga.posts.create({title: "Bacon is cooler", content: "Bresaola tenderloin boudin, meatball leberkas tail pancetta pork chop tri-tip tongue fatback. Short ribs pig bresaola, hamburger pork belly turkey beef venison. Bacon boudin meatball cow, bresaola meatloaf tenderloin short loin. Turducken meatloaf ribeye, landjaeger chicken tenderloin pig. Beef frankfurter rump, jowl tail beef ribs doner. Doner frankfurter bacon, tongue pancetta ball tip shank pig rump. Pork belly sausage porchetta shankle hamburger tail beef ribs pork loin pork chop kevin."})
lisa.posts.create({title: "Stuff!", content: "It's bigger on the inside! EXTERMINATE! Mickey Smith Bad Wolf  Hello, Captain Jack Harkness.  Would you like a jelly baby? Time Lord Hello sweetie I am a Dalek The socks with holes, dummy! We are Dalek I wear a fez now, fezzes are cool Hello, Captain Jack Harkness.  I am a Dalek DON'T BLINK! Galifreyan Time Lord EXTERMINATE! Silence will fall Delete. Delete. Delete. Puny Human! EXTERMINATE! Are you my mummy? Bow ties are cool. The Silence is Coming! EXTERMINATE! EXTERMINATE! Reverse the polarity of the neutron flow Donna Noble has left the library. Donna Noble has been saved. Would you like a jelly baby? Bow ties are cool. EXTERMINATE! You will be exterminated! Geronimo Silence will fall Bow ties are cool."})
lisa.posts.create({title: "Captain Jack Harkness is dreamy", content: "Captain Jack Harkness Delete. Delete. Delete. Silence will fall EXTERMINATE! EXTERMINATE! Bring the Humans to me MY VISION IS IMPAIRED! ninehundred  the oncoming storm Bad Wolf Davros River Song Rory the Roman Cybermen the oncoming storm EXTERMINATE! Allons-y Reverse the polarity of the neutron flow Demon's Run The Supreme Dalek Allons-y, Alonso! Cybermen Hello Sweetie. Davros The Supreme Dalek It's bigger on the inside! Hey, who turned out the lights? Puny Human! wibbly wobbly timey wimey Allons-y, Alonso! Spoilers! Rory the Roman Reverse the polarity of the positron flow Silence will fall Bow ties are cool Allons-y, Alonso! DON'T BLINK! the girl who waited Rose Tyler K-9 Bad Wolf  Puny Human! You are better at dying Time Lord wibbly wobbly timey wimey Hello sweetie The Doctor Stormageddon, Dark Lord of All IT is the Doctor! Enemy of the Daleks! Stormageddon, Dark Lord of All You are better at dying Bananas are good Hello, Captain Jack Harkness.  Skaro EXTERMINATE! Bring the Humans to me Allons-y, Alonso! puny human EXTERMINATE! Geronimo! Dalekanium Donna Noble Galifrey Fantastic! Captain Jack Harkness."})
jesse.posts.create({title: "Like a video game", content: "EXTERMINATE! Captain Jack Harkness Time Lord IT is the Doctor! Enemy of the Daleks! EXTERMINATE! We are Dalek Hello Sweetie. Geronimo EXTERMINATE! Hello sweetie Hello, Captain Jack Harkness.  Raxacoricofallapatorius Bring the Humans to me Captain Jack Harkness the girl who waited Allons-y Puny Human! DON'T BLINK! EXTERMINATE! Reverse the polarity of the positron flow EXTERMINATE! Emperor of the Daleks EXTERMINATE! Amy Pond Raxacoricofallapatorius EXTERMINATE! "})
jesse.posts.create({title: "Yes, those are plungers for arms", content: "Galifreyan Captain Jack Harkness Bow ties are cool. You will be exterminated! EXTERMINATE! The angels have the phone box It's bigger on the inside! the oncoming storm Allons-y Galifreyan Stormageddon, Dark Lord of All you are not alone in the universe EXTERMINATE! Geronimo! Reverse the polarity of the positron flow Rose Tyler Bow ties are cool Bring the Humans to me We are Dalek Tick tock goes the clock... "})
jesse.posts.create({title: "More Daleks!!", content: "Raxacoricofallapatorius Reverse the polarity of the neutron flow It's bigger on the inside! Bad Wolf  Donna Noble I am a Dalek Bananas are good We are Dalek Rose Tyler EXTERMINATE! Bananas are good It's bigger on the inside! We are Dalek Are you my mummy? YOU WILL OBEY! Bring the Humans to me MY VISION IS IMPAIRED! I am a Dalek Captain Jack Harkness Davros Puny Human! Demon's Run I wear a fez now, fezzes are cool Rose Tyler Rory the Roman Silence will fall It's bigger on the inside! Rose Tyler wibbly wobbly timey wimey Stormageddon, Dark Lord of All Stormageddon, Dark Lord of All Bow ties are cool the oncoming storm YOU WILL OBEY! EXTERMINATE! Bad Wolf  Geronimo the oncoming storm RUN! You are better at dying Spoilers! EXTERMINATE! Fantastic! Hello, Captain Jack Harkness.  Rose Tyler Spoilers! I really hate stairs. EXTERMINATE ALL STAIRCASES! The Supreme Dalek EXTERMINATE! MY VISION IS IMPAIRED! Cult of Skaro Hello sweetie EXTERMINATE! Donna Noble EXTERMINATE!"})


# # # # ## Find Posts so I can connect comments


one = Post.find(1)
two = Post.find(2)
three = Post.find(3)
four = Post.find(4)
five = Post.find(5)

# # # # ## Comments on posts


one.comments.create({title: "It's Banana Time!", body: "Rub face on everything stick butt in face, and present belly, scratch hand when stroked. Who's the baby flop over stretch, so hide when guests come over, yet find empty spot in cupboard and sleep all day attack feet. Destroy couch. Hate dog sleep in the bathroom sink for stick butt in face. Chase imaginary bugs stare at ceiling, and give attitude, for find something else more interesting. Sleep on keyboard. "})
two.comments.create({title: "It always rains on Sundays", body: "Swat at dog eat grass, throw it back up, but always hungry and shake treat bag, or stretch. Hack up furballs have secret plans. Stand in front of the computer screen. Scamper chew foot have secret plans stare at ceiling. Lick butt. Mark territory make muffins. Play time behind the couch swat at dog. Purr while eating intently sniff hand."})
three.comments.create({title: "Never forget your pants", body: "Shake treat bag need to chase tail find empty spot in cupboard and sleep all day for sweet beast, for stretch, but lick arm hair. Stare at ceiling all of a sudden cat goes crazy sweet beast, but stretch, yet all of a sudden cat goes crazy, but hate dog, so need to chase tail. Use lap as chair kick up litter but leave hair everywhere, yet sweet beast, yet stand in front of the computer screen, but chase imaginary bugs, for behind the couch."})
four.comments.create({title: "Who said anything about being nice?", body: "Missing until dinner time stand in front of the computer screen i like big cats and i can not lie or swat at dog. Leave fur on owners clothes purr for no reason for chase mice chase imaginary bugs, for shake treat bag, or leave dead animals as gifts, and swat at dog. Swat at dog inspect anything brought into the house."})
five.comments.create({title: "Hey, who was that man?", body: "Sleep in the bathroom sink lick butt, so have secret plans. Intently stare at the same spot. Purr for no reason why must they do that, so burrow under covers. Sleep nap sun bathe, but sweet beast shake treat bag lick arm hair. Need to chase tail leave dead animals as gifts missing until dinner time, hopped up on catnip sleep on keyboard. Bathe private parts with tongue then lick owner's face chase mice stare at ceiling. Shake treat bag favor packaging over toy nap all day. Cat snacks."})

# # comments on comments


# ## not ready yet

comOne = Comment.find(1)
comTwo = Comment.find(2)
comThree = Comment.find(3)
comFour = Comment.find(4)
comFive = Comment.find(5)

comOne.comments.create({title: "Goooood morning Vietnam!", body: "You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man."})
comOne.comments.create({title: "We happy?", body: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing."})
comTwo.comments.create({title: "Are you ready for the truth?", body: "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends."})
comThree.comments.create({title: "No man, I don't eat pork", body: "Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they're actually proud of that shit. "})
comFour.comments.create({title: "I gotta piss", body: "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass."})
comFive.comments.create({title: "I'm serious as a heart attack", body: "Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's going to be? He's the exact opposite of the hero. And most times they're friends, like you and me! I should've known way back when... You know why, David? Because of the kids. They called me Mr Glass."})


