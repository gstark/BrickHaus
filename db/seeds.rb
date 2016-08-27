home = Home.create!(address: "260 1st Ave S, St. Petersburg, FL 33701",
                    beds: 4,
                    baths: 3,
                    square_footage: 5000,
                    price: 750_000,
                    description: "Ancient, leaky, squeaky classic building",
                    main_image: File.open(Rails.root.join("db/seeds/station_house_1.jpg"))
                    )

home = Home.create!(address: "4621 Bayshore Blvd, Tampa, FL 33611",
                    beds: 6,
                    baths: 9,
                    square_footage: 8_930,
                    price: 13_900_000,
                    description: "estate property which epitomizes gracious, elegant and exclusive living. Known locally as the Stovall-Lee House, this South Tampa estate is the largest residential property on Tampa's famous and scenic Bayshore Boulevard N of Gandy. Meticulously restored and expanded over the years, the 6 bedroom, 9 full and 1 half-bath walled and gated estate boasts over 8,900 square feet of living space, on 2.6 acres overlooking the open Bay. Private and secluded.",
                    main_image: File.open(Rails.root.join("db/seeds/1_most.jpg"))
                    )

home = Home.create!(address: "123 Kebert Way, Bradenton, FL 34201",
                    beds: 9,
                    baths: 12,
                    square_footage: 120_00,
                    price: 22_000_000,
                    description: "Kebert Estate - Stay away developer bums!",
                    main_image: File.open(Rails.root.join("db/seeds/3-med.jpg")),
                    additional_image: File.open(Rails.root.join("db/seeds/Alan2.jpg"))
                    )
