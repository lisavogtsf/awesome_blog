## To avoid duplicates after you pull a new db file, EITHER
## selectively uncomment the items you want to add and run $rake db:seed
## OR
## disconnect from your database (stop rails server, quit PG Commander)
## uncomment all commands
## run $rake db:reset, which will drop all contents of the current database
## and remake your datbase for you using the db/seeds.rb file

# Create users

lisa = User.create({first_name: "Lisa", last_name: "Vogt", email: "lisavogt.sf@gmail.com"})
jesse = User.create({first_name: "Jesse", last_name: "Moore", email: "moore.jesseb@gmail.com"})
angga = User.create({first_name: "Angga", last_name: "Putra", email: "angga.w.putra@gmail.com"})
will = User.create({first_name: "Will", last_name: "Curotto", email: "WRONGADDRESS@AOL.COM"})
mark = User.create({first_name: "Mark", last_name: "Centoni", email: "marklc44@gmail.com"})

# Find users and save to variables

lisa = User.find_by_first_name("Lisa")
jesse = User.find_by_first_name("Jesse")
angga = User.find_by_first_name("Angga")
mark = User.find_by_first_name("Mark")
will = User.find_by_first_name("Will")

# Pages, either About or Contact

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

## Posts

will.posts.create({title: "Done It", content: "The new best thing for Scotch lovers. Austin bespoke dreamcatcher sartorial, nulla hashtag accusamus Tumblr VHS assumenda tempor duis fixie. Meh dreamcatcher iPhone pour-over. Deep v freegan Intelligentsia, reprehenderit dolor 8-bit yr vegan iPhone ethical. Retro dreamcatcher farm-to-table tousled. Craft beer magna Carles post-ironic nesciunt consectetur, dreamcatcher fap incididunt next level vero. Laboris ethical exercitation flannel leggings. IPhone street art odio gluten-free viral, deep v church-key Carles in freegan put a bird on it swag."})
will.posts.create({title: "Angry birds", content: "Selvage dolore sartorial ethical, Godard chillwave aliqua odio. Ullamco +1 retro, deep v Pitchfork cray actually Wes Anderson officia irony accusamus tousled. Wayfarers stumptown voluptate, laboris keytar meggings deserunt irony. Banjo biodiesel dreamcatcher, meggings food truck occaecat fanny pack in. DIY tousled fanny pack nisi, Tonx pickled drinking vinegar synth. Blue Bottle Odd Future reprehenderit, aesthetic Brooklyn velit church-key voluptate Kickstarter. Voluptate YOLO lomo messenger bag."})
angga.posts.create({title: "sci fi is cool", content: "Black tie...Whenever I wear this, something bad always happens. River, you know my name. You whispered my name in my ear! There's only one reason I would ever tell anyone my name. There's only one time I could... There was a war. A Time War. The Last Great Time War. My people fought a race called the Daleks, for the sake of all creation. And they lost. We lost. Everyone lost. They're all gone now. My family. My friends. Even that sky. Please, when Torchwood comes to write my complete history, don't tell people I travelled through time and space with her mother!"})
angga.posts.create({title: "Bacon is cooler", content: "Bresaola tenderloin boudin, meatball leberkas tail pancetta pork chop tri-tip tongue fatback. Short ribs pig bresaola, hamburger pork belly turkey beef venison. Bacon boudin meatball cow, bresaola meatloaf tenderloin short loin. Turducken meatloaf ribeye, landjaeger chicken tenderloin pig. Beef frankfurter rump, jowl tail beef ribs doner. Doner frankfurter bacon, tongue pancetta ball tip shank pig rump. Pork belly sausage porchetta shankle hamburger tail beef ribs pork loin pork chop kevin."})
lisa.posts.create({title: "Stuff!", content: "It's bigger on the inside! EXTERMINATE! Mickey Smith Bad Wolf  Hello, Captain Jack Harkness.  Would you like a jelly baby? Time Lord Hello sweetie I am a Dalek The socks with holes, dummy! We are Dalek I wear a fez now, fezzes are cool Hello, Captain Jack Harkness.  I am a Dalek DON'T BLINK! Galifreyan Time Lord EXTERMINATE! Silence will fall Delete. Delete. Delete. Puny Human! EXTERMINATE! Are you my mummy? Bow ties are cool. The Silence is Coming! EXTERMINATE! EXTERMINATE! Reverse the polarity of the neutron flow Donna Noble has left the library. Donna Noble has been saved. Would you like a jelly baby? Bow ties are cool. EXTERMINATE! You will be exterminated! Geronimo Silence will fall Bow ties are cool."})
lisa.posts.create({title: "Captain Jack Harkness is dreamy", content: "Captain Jack Harkness Delete. Delete. Delete. Silence will fall EXTERMINATE! EXTERMINATE! Bring the Humans to me MY VISION IS IMPAIRED! ninehundred  the oncoming storm Bad Wolf Davros River Song Rory the Roman Cybermen the oncoming storm EXTERMINATE! Allons-y Reverse the polarity of the neutron flow Demon's Run The Supreme Dalek Allons-y, Alonso! Cybermen Hello Sweetie. Davros The Supreme Dalek It's bigger on the inside! Hey, who turned out the lights? Puny Human! wibbly wobbly timey wimey Allons-y, Alonso! Spoilers! Rory the Roman Reverse the polarity of the positron flow Silence will fall Bow ties are cool Allons-y, Alonso! DON'T BLINK! the girl who waited Rose Tyler K-9 Bad Wolf  Puny Human! You are better at dying Time Lord wibbly wobbly timey wimey Hello sweetie The Doctor Stormageddon, Dark Lord of All IT is the Doctor! Enemy of the Daleks! Stormageddon, Dark Lord of All You are better at dying Bananas are good Hello, Captain Jack Harkness.  Skaro EXTERMINATE! Bring the Humans to me Allons-y, Alonso! puny human EXTERMINATE! Geronimo! Dalekanium Donna Noble Galifrey Fantastic! Captain Jack Harkness."})
jesse.posts.create({title: "Like a video game", content: "EXTERMINATE! Captain Jack Harkness Time Lord IT is the Doctor! Enemy of the Daleks! EXTERMINATE! We are Dalek Hello Sweetie. Geronimo EXTERMINATE! Hello sweetie Hello, Captain Jack Harkness.  Raxacoricofallapatorius Bring the Humans to me Captain Jack Harkness the girl who waited Allons-y Puny Human! DON'T BLINK! EXTERMINATE! Reverse the polarity of the positron flow EXTERMINATE! Emperor of the Daleks EXTERMINATE! Amy Pond Raxacoricofallapatorius EXTERMINATE! "})
jesse.posts.create({title: "Yes, those are plungers for arms", content: "Galifreyan Captain Jack Harkness Bow ties are cool. You will be exterminated! EXTERMINATE! The angels have the phone box It's bigger on the inside! the oncoming storm Allons-y Galifreyan Stormageddon, Dark Lord of All you are not alone in the universe EXTERMINATE! Geronimo! Reverse the polarity of the positron flow Rose Tyler Bow ties are cool Bring the Humans to me We are Dalek Tick tock goes the clock... "})
jesse.posts.create({title: "More Daleks!!", content: "Raxacoricofallapatorius Reverse the polarity of the neutron flow It's bigger on the inside! Bad Wolf  Donna Noble I am a Dalek Bananas are good We are Dalek Rose Tyler EXTERMINATE! Bananas are good It's bigger on the inside! We are Dalek Are you my mummy? YOU WILL OBEY! Bring the Humans to me MY VISION IS IMPAIRED! I am a Dalek Captain Jack Harkness Davros Puny Human! Demon's Run I wear a fez now, fezzes are cool Rose Tyler Rory the Roman Silence will fall It's bigger on the inside! Rose Tyler wibbly wobbly timey wimey Stormageddon, Dark Lord of All Stormageddon, Dark Lord of All Bow ties are cool the oncoming storm YOU WILL OBEY! EXTERMINATE! Bad Wolf  Geronimo the oncoming storm RUN! You are better at dying Spoilers! EXTERMINATE! Fantastic! Hello, Captain Jack Harkness.  Rose Tyler Spoilers! I really hate stairs. EXTERMINATE ALL STAIRCASES! The Supreme Dalek EXTERMINATE! MY VISION IS IMPAIRED! Cult of Skaro Hello sweetie EXTERMINATE! Donna Noble EXTERMINATE!"})

## Find Posts so I can connect comments

one = Post.find(1)
two = Post.find(2)
three = Post.find(3)
four = Post.find(4)
five = Post.find(5)

## Comments
## not ready yet