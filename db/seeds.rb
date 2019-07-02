# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ dap_name: 'Star Wars' }, { dap_name: 'Lord of the Rings' }])
#   Character.create(dap_name: 'Luke', movie: movies.first)
require 'csv'

puts 'destroying trips'
Trip.destroy_all
puts 'destroying destinations'
Destination.destroy_all
puts "destroying origins"
Origin.destroy_all


puts "creating all origins"
# a CSV row contains
# row[0] ID
# row[1] airport name
# row[2] city name
# row[3] country name
# row[4] code (IATA/FAA)
# row[5] ICAO
# row[6] latitude
# row[7] longitude
# row[8] elavation
# row[9] UTC
# row[10] DST - continent
# row[11] "airports"
# row[12] "OurAirports"

CSV.foreach(Rails.root.join('public', "airports.csv")) do |row|
  Origin.create!(
   airport_id: row[0],
   name: row[1],
   city: row[2],
   country: row[3],
   code: row[4],
   latitude: row[6],
   longitude: row[7],
  )
end

puts "creating destinations:"
puts "creating beach Destinations(1)"
Destination.create!(
  dap_id: 994,
  dap_name: "Seychelles International Airport",
  d_city: "Mahe",
  d_country: "Seychelles",
  dap_code: "SEZ",
  d_latitude: -4.67434,
  d_longitude: 55.521801,
  category: 1
   )
Destination.create!(
  dap_id: 3275,
  dap_name: "Soekarno-Hatta International Airport",
  d_city: "Jakarta",
  d_country: "Indonesia",
  dap_code: "CGK",
  d_latitude: -6.1255698204,
  d_longitude: 106.65599823,
  category: 1
  )
Destination.create!(
  dap_id: 1446,
  dap_name: "Dimokritos Airport",
  d_city: "Alexandroupolis",
  d_country: "Greece",
  dap_code: "AXD",
  d_latitude: 40.855899810791,
  d_longitude: 25.9563007354736,
  category: 1
  )

Destination.create!(
   dap_id: 1460,
   dap_name: "Ioannis Kapodistrias International Airport",
   d_city: "Kerkyra/corfu",
   d_country: "Greece",
   dap_code: "CFU",
   d_latitude: 39.6018981933594,
   d_longitude: 19.9116992950439,
   category: 1
   )

Destination.create!(
  dap_id: 3885,
  dap_name: "Suvarnabhumi Airport",
  d_city: "Bangkok",
  d_country: "Thailand",
  dap_code: "BKK",
  d_latitude: 13.6810998916626,
  d_longitude: 100.747001647949,
  category: 1
   )

Destination.create!(
  dap_id: 3157,
  dap_name: "Don Mueang International Airport",
  d_city: "Bangkok",
  d_country: "Thailand",
  dap_code: "DMK",
  d_latitude: 13.9125995636,
  d_longitude: 100.607002258,
  category: 1
   )

Destination.create!(
  dap_id: 3720,
  dap_name: "Portland International Airport",
  d_city: "Portland",
  d_country: "United States",
  dap_code: "PDX",
  d_latitude: 45.58869934,
  d_longitude: -122.5979996,
  category: 1
   )

Destination.create!(
  dap_id: 1760,
  dap_name: "Punta Cana International Airport",
  d_city: "Punta Cana",
  d_country: "Dominican Republic",
  dap_code: "PUJ",
  d_latitude: 18.5673999786,
  d_longitude: -68.3634033203,
  category: 1
   )

Destination.create!(
  dap_id: 1992,
  dap_name: "Moorea Airport",
  d_city: "Moorea",
  d_country: "French Polynesia",
  dap_code: "MOZ",
  d_latitude: -17.49,
  d_longitude: -149.761993,
  category: 1
   )

Destination.create!(
  dap_id: 1208,
  dap_name: "Zagreb Airport",
  d_city: "Zagreb",
  d_country: "Croatia",
  dap_code: "ZAG",
  d_latitude: 45.7429008484,
  d_longitude: 16.0687999725,
  category: 1
   )

Destination.create!(
  dap_id: 1638,
  dap_name: "Humberto Delgado Airport (Lisbon Portela Airport)",
  d_city: "Lisbon",
  d_country: "Portugal",
  dap_code: "LIS",
  d_latitude: 38.7813,
  d_longitude: -9.13592,
  category: 1
   )

Destination.create!(
  dap_id: 1626,
  dap_name: "Faro Airport",
  d_city: "Faro",
  d_country: "Portugal",
  dap_code: "FAO",
  d_latitude: 37.0144004822,
  d_longitude: -7.96590995789,
  category: 1
   )

Destination.create!(
  dap_id: 2433,
  dap_name: "Puerto Princesa Airport",
  d_city: "Puerto Princesa",
  d_country: "Philippines",
  dap_code: "PPS",
  d_latitude: 9.74211978912354,
  d_longitude: 118.759002685547,
  category: 1
   )

Destination.create!(
  dap_id: 1852,
  dap_name: "Cancún International Airport",
  d_city: "Cancun",
  d_country: "Mexico",
  dap_code: "CUN",
  d_latitude: 21.0365009308,
  d_longitude: -86.8770980835,
  category: 1
   )

Destination.create!(
  dap_id: 4279,
  dap_name: "San Pedro Airport",
  d_city: "San Pedro",
  d_country: "Belize",
  dap_code: "SPR",
  d_latitude: 17.9139,
  d_longitude: -87.9711,
  category: 1
   )

Destination.create!(
  dap_id: 3564,
  dap_name: "Pensacola Regional Airport",
  d_city: "Pensacola",
  d_country: "United States",
  dap_code: "PNS",
  d_latitude: 30.473400115967,
  d_longitude: -87.186599731445,
  category: 1
   )

Destination.create!(
  dap_id: 1780,
  dap_name: "Sangster International Airport",
  d_city: "Montego Bay",
  d_country: "Jamaica",
  dap_code: "MBJ",
  d_latitude: 18.5037002563477,
  d_longitude: -77.9133987426758,
  category: 1
   )

Destination.create!(
  dap_id: 2890,
  dap_name: "Luis Munoz Marin International Airport",
  d_city: "San Juan",
  d_country: "Puerto Rico",
  dap_code: "SJU",
  d_latitude: 18.4393997192,
  d_longitude: -66.0018005371,
  category: 1
   )
Destination.create!(
  dap_id: 2899,
  dap_name: "Princess Juliana International Airport",
  d_city: "Philipsburg",
  d_country: "Netherlands Antilles",
  dap_code: "SXM",
  d_latitude: 18.0410003662,
  d_longitude: -63.1088981628,
  category: 1
   )

puts "creating city Destinations(2)"


Destination.create!(
  dap_id: 2359,
  dap_name: "Tokyo Haneda International Airport",
  d_city: "Tokyo",
  d_country: "Japan",
  dap_code: "HND",
  d_latitude: 35.552299,
  d_longitude: 139.779999,
  category: 2
   )

Destination.create!(
  dap_id: 1489,
  dap_name: "Budapest Liszt Ferenc International Airport",
  d_city: "Budapest",
  d_country: "Hungary",
  dap_code: "BUD",
  d_latitude: 47.42976,
  d_longitude: 19.261093,
  category: 2
   )

Destination.create!(
  dap_id: 1657,
  dap_name: "Henri Coandă International Airport",
  d_city: "Bucharest",
  d_country: "Romania",
  dap_code: "OTP",
  d_latitude: 44.5711111,
  d_longitude: 26.085,
  category: 2
   )

Destination.create!(
  dap_id: 1194,
  dap_name: "Sofia Airport",
  d_city: "Sofia",
  d_country: "Bulgaria",
  dap_code: "SOF",
  d_latitude: 42.6966934204102,
  d_longitude: 23.4114360809326,
  category: 2
   )

Destination.create!(
  dap_id: 3093,
  dap_name: "Indira Gandhi International Airport",
  d_city: "Delhi",
  d_country: "India",
  dap_code: "DEL",
  d_latitude: 28.5665,
  d_longitude: 77.103104,
  category: 2
   )

Destination.create!(
  dap_id: 2997,
  dap_name: "Chhatrapati Shivaji International Airport",
  d_city: "Mumbai",
  d_country: "India",
  dap_code: "BOM",
  d_latitude: 19.0886993408,
  d_longitude: 72.8678970337,
  category: 2
   )

Destination.create!(
  dap_id: 3988,
  dap_name: "Ministro Pistarini International Airport",
  d_city: "Buenos Aires",
  d_country: "Argentina",
  dap_code: "EZE",
  d_latitude: -34.8222,
  d_longitude: -58.5358,
  category: 2
   )

Destination.create!(
  dap_id: 1590,
  dap_name: "Ben Gurion International Airport",
  d_city: "Tel-aviv",
  d_country: "Israel",
  dap_code: "TLV",
  d_latitude: 32.0113983154297,
  d_longitude: 34.8866996765137,
  category: 2
   )

Destination.create!(
  dap_id: 3380,
  dap_name: "Chinggis Khaan International Airport",
  d_city: "Ulan Bator",
  d_country: "Mongolia",
  dap_code: "ULN",
  d_latitude: 47.843102,
  d_longitude: 106.766998,
  category: 2
   )

Destination.create!(
  dap_id: 813,
  dap_name: "OR Tambo International Airport",
  d_city: "Johannesburg",
  d_country: "South Africa",
  dap_code: "JNB",
  d_latitude: -26.1392,
  d_longitude: 28.246,
  category: 2
   )

Destination.create!(
  dap_id: 797,
  dap_name: "Cape Town International Airport",
  d_city: "Cape Town",
  d_country: "South Africa",
  dap_code: "CPT",
  d_latitude: -33.9648017883,
  d_longitude: 18.6016998291,
  category: 2
   )

Destination.create!(
  dap_id: 1186,
  dap_name: "Abeid Amani Karume International Airport",
  d_city: "Zanzibar",
  d_country: "Tanzania",
  dap_code: "ZNZ",
  d_latitude: -6.22202,
  d_longitude: 39.224899,
  category: 2
   )

Destination.create!(
  dap_id: 3964,
  dap_name: "Zvartnots International Airport",
  d_city: "Yerevan",
  d_country: "Armenia",
  dap_code: "EVN",
  d_latitude: 40.1473007202,
  d_longitude: 44.3959007263,
  category: 2
   )

Destination.create!(
  dap_id: 1739,
  dap_name: "Belgrade Nikola Tesla Airport",
  d_city: "Belgrade",
  d_country: "Serbia",
  dap_code: "BEG",
  d_latitude: 44.8184013367,
  d_longitude: 20.3090991974,
  category: 2
   )

Destination.create!(
  dap_id: 1662,
  dap_name: "Transilvania Târgu Mureş International Airport",
  d_city: "Tirgu Mures",
  d_country: "Romania",
  dap_code: "TGM",
  d_latitude: 46.467700958252,
  d_longitude: 24.4125003814697,
  category: 2
   )

Destination.create!(
  dap_id: 3304,
  dap_name: "Kuala Lumpur International Airport",
  d_city: "Kuala Lumpur",
  d_country: "Malaysia",
  dap_code: "KUL",
  d_latitude: 2.745579957962,
  d_longitude: 101.70999908447,
  category: 2
   )

Destination.create!(
  dap_id: 2985,
  dap_name: "Sheremetyevo International Airport",
  d_city: "Moscow",
  d_country: "Russia",
  dap_code: "SVO",
  d_latitude: 55.972599,
  d_longitude: 37.4146,
  category: 2
   )

Destination.create!(
  dap_id: 4029,
  dap_name: "Domodedovo International Airport",
  d_city: "Moscow",
  d_country: "Russia",
  dap_code: "DME",
  d_latitude: 55.4087982177734,
  d_longitude: 37.9062995910645,
  category: 2
   )

Destination.create!(
  dap_id: 580,
  dap_name: "Amsterdam Airport Schiphol",
  d_city: "Amsterdam",
  d_country: "Netherlands",
  dap_code: "AMS",
  d_latitude: 52.308601,
  d_longitude: 4.76389,
  category: 2
   )

Destination.create!(
  dap_id: 1382,
  dap_name: "Charles de Gaulle International Airport",
  d_city: "Paris",
  d_country: "France",
  dap_code: "CDG",
  d_latitude: 49.012798,
  d_longitude: 2.55,
  category: 2
   )

Destination.create!(
  dap_id: 1354,
  dap_name: "Nice-Côte d'Azur Airport",
  d_city: "Nice",
  d_country: "France",
  dap_code: "NCE",
  d_latitude: 43.6584014893,
  d_longitude: 7.21586990356,
  category: 2
   )

Destination.create!(
  dap_id: 1555,
  dap_name: "Leonardo da Vinci–Fiumicino Airport",
  d_city: "Rome",
  d_country: "Italy",
  dap_code: "FCO",
  d_latitude: 41.8002778,
  d_longitude: 12.2388889,
  category: 2
   )

Destination.create!(
  dap_id: 1561,
  dap_name: "Naples International Airport",
  d_city: "Naples",
  d_country: "Italy",
  dap_code: "NAP",
  d_latitude: 40.886002,
  d_longitude: 14.2908,
  category: 2
   )

Destination.create!(
  dap_id: 302,
  dap_name: "Brussels Airport",
  d_city: "Brussels",
  d_country: "Belgium",
  dap_code: "BRU",
  d_latitude: 50.9014015198,
  d_longitude: 4.48443984985,
  category: 2
   )
Destination.create!(
  dap_id: 507,
  dap_name: "London Heathrow Airport",
  d_city: "London",
  d_country: "United Kingdom",
  dap_code: "LHR",
  d_latitude: 51.4706,
  d_longitude: -0.461941,
  category: 2
   )


Destination.create!(
  dap_id: 340,
  dap_name: "Frankfurt am Main Airport",
  d_city: "Frankfurt",
  d_country: "Germany",
  dap_code: "FRA",
  d_latitude: 50.033333,
  d_longitude: 8.570556,
  category: 2
   )

Destination.create!(
  dap_id: 3682,
  dap_name: "Hartsfield Jackson Atlanta International Airport",
  d_city: "Atlanta",
  d_country: "United States",
  dap_code: "ATL",
  d_latitude: 33.6367,
  d_longitude: -84.428101,
  category: 2
   )

Destination.create!(
  dap_id: 3364,
  dap_name: "Beijing Capital International Airport",
  d_city: "Beijing",
  d_country: "China",
  dap_code: "PEK",
  d_latitude: 40.0801010131836,
  d_longitude: 116.584999084473,
  category: 2
   )

Destination.create!(
  dap_id: 2188,
  dap_name: "Dubai International Airport",
  d_city: "Dubai",
  d_country: "United Arab Emirates",
  dap_code: "DXB",
  d_latitude: 25.2527999878,
  d_longitude: 55.3643989563,
  category: 2
   )

Destination.create!(
  dap_id: 3484,
  dap_name: "Los Angeles International Airport",
  d_city: "Los Angeles",
  d_country: "United States",
  dap_code: "LAX",
  d_latitude: 33.94250107,
  d_longitude: -118.4079971,
  category: 2
   )

Destination.create!(
  dap_id: 3830,
  dap_name: "Chicago O'Hare International Airport",
  d_city: "Chicago",
  d_country: "United States",
  dap_code: "ORD",
  d_latitude: 41.9786,
  d_longitude: -87.9048,
  category: 2
   )


Destination.create!(
  dap_id: 3077,
  dap_name: "Hong Kong International Airport",
  d_city: "Hong Kong",
  d_country: "Hong Kong",
  dap_code: "HKG",
  d_latitude: 22.308901,
  d_longitude: 113.915001,
  category: 2
   )


Destination.create!(
  dap_id: 3406,
  dap_name: "Shanghai Pudong International Airport",
  d_city: "Shanghai",
  d_country: "China",
  dap_code: "PVG",
  d_latitude: 31.1434001922607,
  d_longitude: 121.805000305176,
  category: 2
   )


Destination.create!(
 dap_id: 3930,
  dap_name: "Incheon International Airport",
  d_city: "Seoul",
  d_country: "South Korea",
  dap_code: "ICN",
  d_latitude: 37.4691009521484,
  d_longitude: 126.450996398926,
  category: 2
   )


Destination.create!(
  dap_id: 13696,
  dap_name: "Istanbul Airport",
  d_city: "Istanbul",
  d_country: "Turkey",
  dap_code: "IST",
  d_latitude: 41.275278,
  d_longitude: 28.751944,
  category: 2
   )



Destination.create!(
  dap_id: 3316,
  dap_name: "Singapore Changi Airport",
  d_city: "Singapore",
  d_country: "Singapore",
  dap_code: "SIN",
  d_latitude: 1.35019,
  d_longitude: 103.994003,
  category: 2
   )



Destination.create!(
  dap_id: 3797,
  dap_name: "John F Kennedy International Airport",
  d_city: "New York",
  d_country: "United States",
  dap_code: "JFK",
  d_latitude: 40.63980103,
  d_longitude: -73.77890015,
  category: 2
   )



Destination.create!(
  dap_id: 1229,
  dap_name: "Adolfo Suárez Madrid–Barajas Airport",
  d_city: "Madrid",
  d_country: "Spain",
  dap_code: "MAD",
  d_latitude: 40.471926,
  d_longitude: -3.56264,
  category: 2
   )

Destination.create!(
  dap_id: 1218,
  dap_name: "Barcelona International Airport",
  d_city: "Barcelona",
  d_country: "Spain",
  dap_code: "BCN",
  d_latitude: 41.2971,
  d_longitude: 2.07846,
  category: 2
   )

Destination.create!(
  dap_id: 193,
  dap_name: "Lester B. Pearson International Airport",
  d_city: "Toronto",
  d_country: "Canada",
  dap_code: "YYZ",
  d_latitude: 43.6772003174,
  d_longitude: -79.6305999756,
  category: 2
   )

Destination.create!(
  dap_id: 346,
  dap_name: "Munich Airport",
  d_city: "Munich",
  d_country: "Germany",
  dap_code: "MUC",
  d_latitude: 48.353802,
  d_longitude: 11.7861,
  category: 2
   )

Destination.create!(
  dap_id: 3494,
  dap_name: "Newark Liberty International Airport",
  d_city: "Newark",
  d_country: "United States",
  dap_code: "EWR",
  d_latitude: 40.6925010681152,
  d_longitude: -74.168701171875,
  category: 2
   )

Destination.create!(
  dap_id: 2564,
  dap_name: "Guarulhos - Governador André Franco Montoro International Airport",
  d_city: "Sao Paulo",
  d_country: "Brazil",
  dap_code: "GRU",
  d_latitude: -23.4355564117432,
  d_longitude: -46.4730567932129,
  category: 2
   )

Destination.create!(
  dap_id: 3146,
  dap_name: "Vir Savarkar International Airport",
  d_city: "Port Blair",
  d_country: "India",
  dap_code: "IXZ",
  d_latitude: 11.6412000656128,
  d_longitude: 92.7296981811523,
  category: 2
   )

Destination.create!(
  dap_id: 3361,
  dap_name: "Sydney Kingsford Smith International Airport",
  d_city: "Sydney",
  d_country: "Australia",
  dap_code: "SYD",
  d_latitude: -33.9460983276367,
  d_longitude: 151.177001953125,
  category: 2
   )

Destination.create!(
  dap_id: 3339,
  dap_name: "Melbourne International Airport",
  d_city: "Melbourne",
  d_country: "Australia",
  dap_code: "MEL",
  d_latitude: -37.673302,
  d_longitude: 144.843002,
  category: 2
   )


Destination.create!(
  dap_id: 2006,
  dap_name: "Auckland International Airport",
  d_city: "Auckland",
  d_country: "New Zealand",
  dap_code: "AKL",
  d_latitude: -37.0080986023,
  d_longitude: 174.792007446,
  category: 2
   )

Destination.create!(
  dap_id: 1128,
  dap_name: "Cairo International Airport",
  d_city: "Cairo",
  d_country: "Egypt",
  dap_code: "CAI",
  d_latitude: 30.1219005584717,
  d_longitude: 31.4055995941162,
  category: 2
   )

Destination.create!(
  dap_id: 2650,
  dap_name: "Comodoro Arturo Merino Benítez International Airport",
  d_city: "Santiago",
  d_country: "Chile",
  dap_code: "SCL",
  d_latitude: -33.3930015563965,
  d_longitude: -70.7857971191406,
  category: 2
   )


Destination.create!(
  dap_id: 3877,
  dap_name: "McCarran International Airport",
  d_city: "Las Vegas",
  d_country: "United States",
  dap_code: "LAS",
  d_latitude: 36.08010101,
  d_longitude: -115.1520004,
  category: 2
   )




Destination.create!(
  dap_id: 1885,
  dap_name: "Juan Santamaria International Airport",
  d_city: "San Jose",
  d_country: "Costa Rica",
  dap_code: "SJO",
  d_latitude: 9.99386024475098,
  d_longitude: -84.2088012695312,
  category: 2
   )

Destination.create!(
  dap_id: 737,
  dap_name: "Stockholm-Arlanda Airport",
  d_city: "Stockholm",
  d_country: "Sweden",
  dap_code: "ARN",
  d_latitude: 59.651901245117,
  d_longitude: 17.918600082397,
  category: 2
   )


Destination.create!(
  dap_id: 4105,
  dap_name: "Hosea Kutako International Airport",
  d_city: "Windhoek",
  d_country: "Namibia",
  dap_code: "WDH",
  d_latitude: -22.4799,
  d_longitude: 17.4709,
  category: 2
   )

Destination.create!(
  dap_id: 1871,
  dap_name: "Tocumen International Airport",
  d_city: "Panama City",
  d_country: "Panama",
  dap_code: "PTY",
  d_latitude: 9.0713596344,
  d_longitude: -79.3834991455,
  category: 2
   )

Destination.create!(
  dap_id: 1587,
  dap_name: "Václav Havel Airport Prague",
  d_city: "Prague",
  d_country: "Czech Republic",
  dap_code: "PRG",
  d_latitude: 50.1008,
  d_longitude: 14.26,
  category: 2
   )

Destination.create!(
  dap_id: 1165,
  dap_name: "Kigali International Airport",
  d_city: "Kigali",
  d_country: "Rwanda",
  dap_code: "KGL",
  d_latitude: -1.96863,
  d_longitude: 30.1395,
  category: 2
   )

Destination.create!(
  dap_id: 535,
  dap_name: "Edinburgh Airport",
  d_city: "Edinburgh",
  d_country: "United Kingdom",
  dap_code: "EDI",
  d_latitude: 55.9500007629395,
  d_longitude: -3.37249994277954,
  category: 2
   )

Destination.create!(
  dap_id: 609,
  dap_name: "Copenhagen Kastrup Airport",
  d_city: "Copenhagen",
  d_country: "Denmark",
  dap_code: "CPH",
  d_latitude: 55.617900848389,
  d_longitude: 12.656000137329,
  category: 2
   )

Destination.create!(
  dap_id: 287,
  dap_name: "Tunis Carthage International Airport",
  d_city: "Tunis",
  d_country: "Tunisia",
  dap_code: "TUN",
  d_latitude: 36.851001739502,
  d_longitude: 10.2271995544434,
  category: 2
   )

Destination.create!(
  dap_id: 287,
  dap_name: "Tunis Carthage International Airport",
  d_city: "Tunis",
  d_country: "Tunisia",
  dap_code: "TUN",
  d_latitude: 36.851001739502,
  d_longitude: 10.2271995544434,
  category: 2
   )


puts "creating nature Destinations(3)"

Destination.create!(
  dap_id: 2673,
  dap_name: "José Joaquín de Olmedo International Airport",
  d_city: "Guayaquil",
  d_country: "Ecuador",
  dap_code: "GYE",
  d_latitude: -2.15741991997,
  d_longitude: -79.8835983276,
  category: 3
   )

Destination.create!(
  dap_id: 2762,
  dap_name: "El Alto International Airport",
  d_city: "La Paz",
  d_country: "Bolivia",
  dap_code: "LPB",
  d_latitude: -16.5132999420166,
  d_longitude: -68.1922988891602,
  category: 3
   )

Destination.create!(
  dap_id: 421,
  dap_name: "Helsinki Vantaa Airport",
  d_city: "Helsinki",
  d_country: "Finland",
  dap_code: "HEL",
  d_latitude: 60.317199707031,
  d_longitude: 24.963300704956,
  category: 3
   )

Destination.create!(
  dap_id: 1767,
  dap_name: "La Aurora Airport",
  d_city: "Guatemala City",
  d_country: "Guatemala",
  dap_code: "GUA",
  d_latitude: 14.5833,
  d_longitude: -90.527496,
  category: 3
   )

Destination.create!(
  dap_id: 3034,
  dap_name: "Phnom Penh International Airport",
  d_city: "Phnom-penh",
  d_country: "Cambodia",
  dap_code: "PNH",
  d_latitude: 11.5466003417969,
  d_longitude: 104.84400177002,
  category: 3
   )

Destination.create!(
  dap_id: 1863,
  dap_name: "Augusto C. Sandino (Managua) International Airport",
  d_city: "Managua",
  d_country: "Nicaragua",
  dap_code: "MGA",
  d_latitude: 12.1415004730225,
  d_longitude: -86.1681976318359,
  category: 3
   )


Destination.create!(
  dap_id: 2789,
  dap_name: "Jorge Chávez International Airport",
  d_city: "Lima",
  d_country: "Peru",
  dap_code: "LIM",
  d_latitude: -12.0219,
  d_longitude: -77.114305,
  category: 3
   )

Destination.create!(
  dap_id: 1745,
  dap_name: "M. R. Štefánik Airport",
  d_city: "Bratislava",
  d_country: "Slovakia",
  dap_code: "BTS",
  d_latitude: 48.1702003479004,
  d_longitude: 17.2126998901367,
  category: 3
   )

Destination.create!(
  dap_id: 3959,
  dap_name: "Vilnius International Airport",
  d_city: "Vilnius",
  d_country: "Lithuania",
  dap_code: "VNO",
  d_latitude: 54.634102,
  d_longitude: 25.285801,
  category: 3
   )

Destination.create!(
  dap_id: 3953,
  dap_name: "Riga International Airport",
  d_city: "Riga",
  d_country: "Latvia",
  dap_code: "RIX",
  d_latitude: 56.9235992431641,
  d_longitude: 23.9710998535156,
  category: 3
   )

Destination.create!(
  dap_id: 2877,
  dap_name: "Douglas-Charles Airport",
  d_city: "Dominica",
  d_country: "Dominica",
  dap_code: "DOM",
  d_latitude: 15.547,
  d_longitude: -61.299999,
  category: 3
   )

Destination.create!(
  dap_id: 189,
  dap_name: "St. John's International Airport",
  d_city: "St. John's",
  d_country: "Canada",
  dap_code: "YYT",
  d_latitude: 47.618598938,
  d_longitude: -52.7518997192,
  category: 3
   )

Destination.create!(
  dap_id: 2903,
  dap_name: "Terrance B. Lettsome International Airport",
  d_city: "Tortola",
  d_country: "British Virgin Islands",
  dap_code: "EIS",
  d_latitude: 18.4447994232178,
  d_longitude: -64.5429992675781,
  category: 3
   )

Destination.create!(
  dap_id: 1741,
  dap_name: "Podgorica Airport",
  d_city: "Podgorica",
  d_country: "Montenegro",
  dap_code: "TGD",
  d_latitude: 42.359402,
  d_longitude: 19.2519,
  category: 3
   )

Destination.create!(
  dap_id: 2256,
  dap_name: "Babelthuap Airport",
  d_city: "Babelthuap",
  d_country: "Palau",
  dap_code: "ROR",
  d_latitude: 7.36731,
  d_longitude: 134.544236,
   category: 3
   )

Destination.create!(
  dap_id: 16,
  dap_name: "Keflavik International Airport",
  d_city: "Keflavik",
  d_country: "Iceland",
  dap_code: "KEF",
  d_latitude: 63.985000610352,
  d_longitude: -22.605600357056,
  category: 3
   )

Destination.create!(
  dap_id: 7,
  dap_name: "Narsarsuaq Airport",
  d_city: "Narssarssuaq",
  d_country: "Greenland",
  dap_code: "UAK",
  d_latitude: 61.1604995728,
  d_longitude: -45.4259986877,
  category: 3
   )

Destination.create!(
  dap_id: 3774,
  dap_name: "Ted Stevens Anchorage International Airport",
  d_city: "Anchorage",
  d_country: "United States",
  dap_code: "ANC",
  d_latitude: 61.1744003295898,
  d_longitude: -149.996002197266,
  category: 3
   )

Destination.create!(
  dap_id: 1107,
  dap_name: "Addis Ababa Bole International Airport",
  d_city: "Addis Ababa",
  d_country: "Ethiopia",
  dap_code: "ADD",
  d_latitude: 8.97789001465,
  d_longitude: 38.7993011475,
  category: 3
   )



Destination.create!(
  dap_id: 4059,
  dap_name: "Jomo Kenyatta International Airport",
  d_city: "Nairobi",
  d_country: "Kenya",
  dap_code: "NBO",
  d_latitude: -1.31923997402,
  d_longitude: 36.9277992249,
  category: 3
   )

puts "creating ski Destinations(4)"

Destination.create!(
  dap_id: 1678,
  dap_name: "Zürich Airport",
  d_city: "Zurich",
  d_country: "Switzerland",
  dap_code: "ZRH",
  d_latitude: 47.464699,
  d_longitude: 8.54917,
  category: 4
   )

Destination.create!(
  dap_id: 6479,
  dap_name: "Courchevel Airport",
  d_city: "Courcheval",
  d_country: "France",
  dap_code: "CVF",
  d_latitude: 45.3967018127441,
  d_longitude: 6.63471984863281,
  category: 4
   )

Destination.create!(
  dap_id: 3819,
  dap_name: "City of Colorado Springs Municipal Airport",
  d_city: "Colorado Springs",
  d_country: "United States",
  dap_code: "COS",
  d_latitude: 38.805801,
  d_longitude: -104.700996,
  category: 4
   )

Destination.create!(
  dap_id: 7001,
  dap_name: "Aspen-Pitkin Co/Sardy Field",
  d_city: "Aspen",
  d_country: "United States",
  dap_code: "ASE",
  d_latitude: 39.22320175,
  d_longitude: -106.8690033,
  category: 4
   )

Destination.create!(
  dap_id: 1423,
  dap_name: "EuroAirport Basel-Mulhouse-Freiburg Airport",
  d_city: "Mulhouse",
  d_country: "France",
  dap_code: "BSL",
  d_latitude: 47.59,
  d_longitude: 7.5291667,
  category: 4
   )

Destination.create!(
  dap_id: 1536,
  dap_name: "Bolzano Airport",
  d_city: "Bolzano",
  d_country: "Italy",
  dap_code: "BZO",
  d_latitude: 46.460201,
  d_longitude: 11.3264,
  category: 4
   )
Destination.create!(
  dap_id: 5995,
  dap_name: "Okadama Airport",
  d_city: "Sapporo",
  d_country: "Japan",
  dap_code: "OKD",
  d_latitude: 43.117447,
  d_longitude: 141.38134,
  category: 4
   )
Destination.create!(
  dap_id: 8080,
  dap_name: "Méribel Altiport",
  d_city: "Ajaccio",
  d_country: "France",
  dap_code: "MFX",
  d_latitude: 45.407003,
  d_longitude: 6.577942,
  category: 4
   )

Destination.create!(
  dap_id: 1610,
  dap_name: "Innsbruck Airport",
  d_city: "Innsbruck",
  d_country: "Austria",
  dap_code: "INN",
  d_latitude: 47.260201,
  d_longitude: 11.344,
  category: 4
   )

Destination.create!(
  dap_id: 1665,
  dap_name: "Geneva Cointrin International Airport",
  d_city: "Geneva",
  d_country: "Switzerland",
  dap_code: "GVA",
  d_latitude: 46.2380981445312,
  d_longitude: 6.10895013809204,
  category: 4
   )
Destination.create!(
  dap_id: 3536,
  dap_name: "Salt Lake City International Airport",
  d_city: "Salt Lake City",
  d_country: "United States",
  dap_code: "SLC",
  d_latitude: 40.7883987426758,
  d_longitude: -111.977996826172,
  category: 4
   )

Destination.create!(
  dap_id: 2513,
  dap_name: "San Carlos De Bariloche Airport",
  d_city: "San Carlos De Bariloche",
  d_country: "Argentina",
  dap_code: "BRC",
  d_latitude: -41.151199,
  d_longitude: -71.157501,
  category: 4
   )


puts "done"

