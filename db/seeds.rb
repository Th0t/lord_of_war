# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

# 5.times { |i| User.create!(first_name:         "test#{i}",
#                           last_name:          "test#{i}",
#                           email:              "test#{i}@test.fr",
#                           password:           "teeest#{i}") }
#
# 5.times { |i| Weapon.create!(title:            "test#{i}",
#                             description:      "test#{i}",
#                             category:         "knives",
#                             price:            42,
#                             owner_id:         i+1) }
#
# 5.times { |i| Booking.create!(start_date:      "11-07-2017",
#  2017-07-11                  end_date:        "11-07-2017-07-28                   status:          "pending",
#                              hirer_id:        i+1,
#                              weapon:          Weapon.find(i+1)) }
#
# 5.times { |i| Booking.create!(start_date:      "11-07-2017",
#  2017-07-11                  end_date:        "11-07-2017-07-28                   status:          "pending",
#                              hirer_id:        i+1,
#                              weapon_id:       i+1)

User.destroy_all

user_putin = User.create!(first_name:         "Vladimir",
                         last_name:          "Putin",
                         email:              "vladiputi@vivarussia.ru",
                         password:           "iloverussia",
                         avatar_url:         "https://upload.wikimedia.org/wikipedia/commons/8/86/Putin_with_flag_of_Russia.jpg")

user_rambo = User.create!(first_name:         "John",
                         last_name:          "Rambo",
                         email:              "jrambo@waaar.usa",
                         password:           "ilovewar",
                         avatar_url:         "https://upload.wikimedia.org/wikipedia/commons/a/a0/John_Rambo.jpg")

user_farc = User.create!(first_name:         "Rebel",
                        last_name:          "Farc",
                        email:              "rebelfarc@vivalarevolution.co",
                        password:           "iloverevolution",
                        avatar_url:         "https://sahara-question.com/sites/default/files/polis_atlant.jpg")

user_gege = User.create!(first_name:         "Gerard",
                        last_name:          "Robert",
                        email:              "gege@vivelevin.fr",
                        password:           "ilovewine",
                        avatar_url:         "http://boulevard69.com/wp-content/uploads/2015/11/chasseurs-sur-une-ile-flottante.jpg")

user_wech = User.create!(first_name:         "keke",
                        last_name:          "lebogossedu93",
                        email:              "wechtareum@vivaleteuch.rue",
                        password:           "ilovetareum",
                        avatar_url:         "http://images3.wikia.nocookie.net/__cb20091230182010/desencyclopedie/images/5/53/Racailletrain.jpg")

user_maul = User.create!(first_name:         "Darth",
                        last_name:          "Maul",
                        email:              "darthmaul@vivadarkness.gal",
                        password:           "ilovevador",
                        avatar_url:         "https://upload.wikimedia.org/wikipedia/en/b/bf/Darth_Maul.png")

user_snow = User.create!(first_name:         "John",
                        last_name:          "Snow",
                        email:              "winteriscoming@vivawinter.wes",
                        password:           "iknownothing",
                        avatar_url:         "http://geeknation.com/wp-content/uploads/2016/06/jon-snow-featured-image.jpg")

weap_raff = Weapon.create!(title:            "Dassault Rafale",
                          description:      "The Dassault Rafale (French pronunciation: ​[ʁafal], literally meaning 'gust of wind',[6] and 'burst of fire' in a more military sense)[7] is a French twin-engine, canard delta wing, multirole fighter aircraft designed and built by Dassault Aviation. Equipped with a wide range of weapons, the Rafale is intended to perform air supremacy, interdiction, aerial reconnaissance, ground support, in-depth strike, anti-ship strike and nuclear deterrence missions.",
                          category:         "heavy",
                          price:            215000000,
                          owner:            user_putin,
                          photo_url:        "https://upload.wikimedia.org/wikipedia/commons/7/73/Rafale_-_RIAT_2012_%287852045796%29.jpg")

weap_m134 = Weapon.create!(title:            "Gatling M134",
                          description:      "The M134 Minigun is a 7.62×51mm NATO, six-barrel rotary machine gun with a high rate of fire (2,000 to 6,000 rounds per minute) which can also fire at a high sustained rate.[3] It features Gatling-style rotating barrels with an external power source, normally an electric motor.",
                          category:         "heavy",
                          price:            215000,
                          owner:            user_rambo,
                          photo_url:        "https://upload.wikimedia.org/wikipedia/commons/e/ec/Gau_17_7.62mm_minigun.jpg")

weap_ak47 = Weapon.create!(title:            "AK-47",
                          description:      "The AK-47, or AK as it is officially known (Russian: Автомат Калашникова, translit. Avtomat Kalashnikova, lit. 'Kalashnikov's Automatic Rifle'), also known as the Kalashnikov, is a selective-fire (semi-automatic and automatic), gas-operated 7.62×39 mm assault rifle, developed in the Soviet Union by Mikhail Kalashnikov. It is the originating firearm of the Kalashnikov rifle (or 'AK') family.",
                          category:         "riffles",
                          price:            215,
                          owner:            user_farc,
                          photo_url:        "https://upload.wikimedia.org/wikipedia/commons/1/18/AK_47.JPG")

weap_bra5 = Weapon.create!(title:            "Browning A-5",
                          description:      "The Browning Automatic 5, most often Auto-5 or simply A-5, is a recoil-operated semi-automatic shotgun designed by John Browning.",
                          category:         "shotguns",
                          price:            215,
                          owner:            user_gege,
                          photo_url:        "https://upload.wikimedia.org/wikipedia/commons/6/6f/RemingtonMd11.JPG")

weap_goun = Weapon.create!(title:            "no uzed goun",
                          description:      "almost never uzd good gun very good deal plz cash to western union deliveryvery fast no scam, wasn't used 4 bludy faild robery with bludy dead peeplole",
                          category:         "pistols",
                          price:            214,
                          owner:            user_wech,
                          photo_url:        "http://i.dailymail.co.uk/i/pix/2013/08/04/article-0-1B257780000005DC-975_634x463.jpg")

weap_maul = Weapon.create!(title:            "Lightsaber",
                          description:      "The Sith apprentice Darth Maul wielded a double-bladed lightsaber made by joining two hilts together end-to-end. Maul’s dexterity and extensive training allowed him to use his weapon as a single-bladed saber, or to activate both crimson blades and fight multiple opponents at once. On Naboo, Maul killed Qui-Gon Jinn with his saber, but Obi-Wan Kenobi cut his weapon in half and soon did the same to Maul. Unknown to Obi-Wan, Maul survived, and retained the working half of his weapon. He used this single-bladed saber while leading the Shadow Collective.",
                          category:         "swords",
                          price:            215000,
                          owner:            user_maul,
                          photo_url:        "https://lumiere-a.akamaihd.net/v1/images/darth-mauls-lightsaber_3c972f6c.jpeg?region=0%2C61%2C1560%2C878&width=768")

weap_snow = Weapon.create!(title:            "Longclaw",
                          description:      "Longclaw is the ancestral Valyrian steel bastard sword of House Mormont. ",
                          category:         "swords",
                          price:            215000000,
                          owner:            user_snow,
                          photo_url:        "http://awoiaf.westeros.org/images/8/8b/Longclaw%2C_Sword_of_Jon_Snow.jpg")

weap_nuke = Weapon.create!(title:            "Tsar Bomba",
                          description:      "The device offically designated RDS-220, known to its designers as Big Ivan, and nicknamed in the west Tsar Bomba (and referred to as the Big Bomb by Sakharov in his Memoirs [Sakharov 1990]) was the largest nuclear weapon ever constructed or detonated.",
                          category:         "heavy",
                          price:            215000000,
                          owner:            user_putin,
                          photo_url:        "http://nuclearweaponarchive.org/Russia/TsarBomba2Big.jpg")

weap_pen = Weapon.create!(title:            "Death pen",
                          description:      "A pencil is a writing implement or art medium constructed of a narrow, solid pigment core inside a protective casing which prevents the core from being broken or leaving marks on the user's hand during use.",
                          category:         "heavy",
                          price:            215000000,
                          owner:            user_rambo,
                          photo_url:        "https://duckduckgo.com/i/9f5837a2.jpg")

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "accepted",
               hirer:           user_rambo,
               weapon:          weap_nuke)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "rejected",
               hirer:           user_wech,
               weapon:          weap_pen)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_snow,
               weapon:          weap_maul)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_rambo,
               weapon:          weap_goun)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_putin,
               weapon:          weap_raff)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_rambo,
               weapon:          weap_m134)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_gege,
               weapon:          weap_ak47)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_farc,
               weapon:          weap_bra5)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_maul,
               weapon:          weap_m134)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_snow,
               weapon:          weap_bra5)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_putin,
               weapon:          weap_pen)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_farc,
               weapon:          weap_raff)

Booking.create!(start_date:      "2017-07-11",
               end_date:        "2017-07-28",
               status:          "pending",
               hirer:           user_snow,
               weapon:          weap_snow)

Booking.create!(start_date:      "2017-08-01",
               end_date:        "2017-09-30",
               status:          "pending",
               hirer:           user_gege,
               weapon:          weap_ak47)
