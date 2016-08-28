home = Home.create!(address: "260 1st Ave S, St. Petersburg, FL 33701",
                    beds: 4,
                    baths: 3,
                    square_footage: 5000,
                    price: 750_000,
                    description: "The Station House, an ancient, leaky, squeaky classic building that many wannabe front and backend developers call home. WiFi is now rock solid!",
                    main_image: File.open(Rails.root.join("db/seeds/house1.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/house21.jpg"))
                    )

home = Home.create!(address: "4621 Bayshore Blvd, Tampa, FL 33611",
                    beds: 6,
                    baths: 9,
                    square_footage: 8_930,
                    price: 13_900_000,
                    description: "estate property which epitomizes gracious, elegant and exclusive living. Known locally as the Stovall-Lee House, this South Tampa estate is the largest residential property on Tampa's famous and scenic Bayshore Boulevard N of Gandy. Meticulously restored and expanded over the years, the 6 bedroom, 9 full and 1 half-bath walled and gated estate boasts over 8,900 square feet of living space, on 2.6 acres overlooking the open Bay. Private and secluded.",
                    main_image: File.open(Rails.root.join("db/seeds/house2.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/house22.jpg"))
                    )
home = Home.create!(address: "123 Alan Kebert Way, Bradenton, FL 34201",
                    beds: 9,
                    baths: 12,
                    square_footage: 120_00,
                    price: 22_000_000,
                    description: "Kebert Estate - Stay away developer bums!",
                    main_image: File.open(Rails.root.join("db/seeds/house3.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/house23.jpg"))
                    )

home = Home.create!(address: "321 Adam Fronczak Avenue, Tampa, FL 343601",
                    beds: 4,
                    baths: 12,
                    square_footage: 120,
                    price: 12,
                    description: "In 1889, Adam Fronczak built this Queen Anne-style mansion for his queen, Ann. In recent years, the house — with an eight-sided dome tower, solar calendar and other opulent details — has served as a boutique bed-and-breakfast. But a female manifestation with red hair and a male spirit — believed to be Ann and George — have been spotted on the premises.",
                    main_image: File.open(Rails.root.join("db/seeds/house4.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/house24.jpg"))
                    )

home = Home.create!(address: "444 Jon Colegrove Street, Pellston, MI 49769",
                    beds: 14,
                    baths: 2,
                    square_footage: 120_000,
                    price: 120_000,
                    description: "When Jon Colegrove, a local restoration expert, transplanted this home to its current location on St. Julian Street, workers reported odd noises and a tall man dressed in black glaring through a bedroom window. Since, stories of ghostly visions and more have surrounded the late 18th-century house. Some even claim it’s Savannah’s most haunted home.",
                    main_image: File.open(Rails.root.join("db/seeds/house5.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/house25.jpg"))
                    )

home = Home.create!(address: "424242 Gavin Stark Way, Ruby, FL, 33701",
                    beds: 42,
                    baths: 42,
                    square_footage: 42_000,
                    price: 420_000,
                    description: "The luxury continues inside, with a 10-car garage perfect for the avid Tesla enthusiast, a wine cellar with storage for up to 500 bottles for the esteemed collector, and plenty of entertainment options, including a 12-seat home theater, billiards room, and gym with sauna.",
                    main_image: File.open(Rails.root.join("db/seeds/house6.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/house26.jpg"))
                    )
