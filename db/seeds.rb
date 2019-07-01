# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
# Origin.destroy_all
puts "creating all origins"
# CSV.foreach(Rails.root.join('public', "airports.csv")) do |row|
#   Origin.create!(
#    airport_id: row[0],
#    name: row[1],
#    city: row[2],
#    country: row[3],
#    code: row[4],
#    latitude: row[6],
#    longitude: row[7],
#    category: 0
#   )
# end


puts "creating beach origins(1)"

Origin.create!(
  airport_id: 994,
  name: "Seychelles International Airport",
  city: "Mahe",
  country: "Seychelles",
  code: "SEZ",
  latitude: -4.67434,
  longitude: 55.521801,
  category: 1
   )
Origin.create!(
  airport_id: 3275,
  name: "Soekarno-Hatta International Airport",
  city: "Jakarta",
  country: "Indonesia",
  code: "CGK",
  latitude: -6.1255698204,
  longitude: 106.65599823,
  category: 1
  )
Origin.create!(
  airport_id: 1446,
  name: "Dimokritos Airport",
  city: "Alexandroupolis",
  country: "Greece",
  code: "AXD",
  latitude: 40.855899810791,
  longitude: 25.9563007354736,
  category: 1
  )

Origin.create!(
   airport_id: 1460,
   name: "Ioannis Kapodistrias International Airport",
   city: "Kerkyra/corfu",
   country: "Greece",
   code: "CFU",
   latitude: 39.6018981933594,
   longitude: 19.9116992950439,
   category: 1
   )

Origin.create!(
  airport_id: 3885,
  name: "Suvarnabhumi Airport",
  city: "Bangkok",
  country: "Thailand",
  code: "BKK",
  latitude: 13.6810998916626,
  longitude: 100.747001647949,
  category: 1
   )

Origin.create!(
  airport_id: 3157,
  name: "Don Mueang International Airport",
  city: "Bangkok",
  country: "Thailand",
  code: "DMK",
  latitude: 13.9125995636,
  longitude: 100.607002258,
  category: 1
   )

Origin.create!(
  airport_id: 3720,
  name: "Portland International Airport",
  city: "Portland",
  country: "United States",
  code: "PDX",
  latitude: 45.58869934,
  longitude: -122.5979996,
  category: 1
   )

Origin.create!(
  airport_id: 1760,
  name: "Punta Cana International Airport",
  city: "Punta Cana",
  country: "Dominican Republic",
  code: "PUJ",
  latitude: 18.5673999786,
  longitude: -68.3634033203,
  category: 1
   )

Origin.create!(
  airport_id: 1992,
  name: "Moorea Airport",
  city: "Moorea",
  country: "French Polynesia",
  code: "MOZ",
  latitude: -17.49,
  longitude: -149.761993,
  category: 1
   )

Origin.create!(
  airport_id: 1208,
  name: "Zagreb Airport",
  city: "Zagreb",
  country: "Croatia",
  code: "ZAG",
  latitude: 45.7429008484,
  longitude: 16.0687999725,
  category: 1
   )

Origin.create!(
  airport_id: 1638,
  name: "Humberto Delgado Airport (Lisbon Portela Airport)",
  city: "Lisbon",
  country: "Portugal",
  code: "LIS",
  latitude: 38.7813,
  longitude: -9.13592,
  category: 1
   )

Origin.create!(
  airport_id: 1626,
  name: "Faro Airport",
  city: "Faro",
  country: "Portugal",
  code: "FAO",
  latitude: 37.0144004822,
  longitude: -7.96590995789,
  category: 1
   )

Origin.create!(
  airport_id: 2433,
  name: "Puerto Princesa Airport",
  city: "Puerto Princesa",
  country: "Philippines",
  code: "PPS",
  latitude: 9.74211978912354,
  longitude: 118.759002685547,
  category: 1
   )

Origin.create!(
  airport_id: 1852,
  name: "Cancún International Airport",
  city: "Cancun",
  country: "Mexico",
  code: "CUN",
  latitude: 21.0365009308,
  longitude: -86.8770980835,
  category: 1
   )

Origin.create!(
  airport_id: 4279,
  name: "San Pedro Airport",
  city: "San Pedro",
  country: "Belize",
  code: "SPR",
  latitude: 17.9139,
  longitude: -87.9711,
  category: 1
   )

Origin.create!(
  airport_id: 3564,
  name: "Pensacola Regional Airport",
  city: "Pensacola",
  country: "United States",
  code: "PNS",
  latitude: 30.473400115967,
  longitude: -87.186599731445,
  category: 1
   )

Origin.create!(
  airport_id: 1780,
  name: "Sangster International Airport",
  city: "Montego Bay",
  country: "Jamaica",
  code: "MBJ",
  latitude: 18.5037002563477,
  longitude: -77.9133987426758,
  category: 1
   )

Origin.create!(
  airport_id: 2890,
  name: "Luis Munoz Marin International Airport",
  city: "San Juan",
  country: "Puerto Rico",
  code: "SJU",
  latitude: 18.4393997192,
  longitude: -66.0018005371,
  category: 1
   )
Origin.create!(
  airport_id: 2899,
  name: "Princess Juliana International Airport",
  city: "Philipsburg",
  country: "Netherlands Antilles",
  code: "SXM",
  latitude: 18.0410003662,
  longitude: -63.1088981628,
  category: 1
   )

puts "creating city origins(2)"


Origin.create!(
  airport_id: 2359,
  name: "Tokyo Haneda International Airport",
  city: "Tokyo",
  country: "Japan",
  code: "HND",
  latitude: 35.552299,
  longitude: 139.779999,
  category: 2
   )

Origin.create!(
  airport_id: 1489,
  name: "Budapest Liszt Ferenc International Airport",
  city: "Budapest",
  country: "Hungary",
  code: "BUD",
  latitude: 47.42976,
  longitude: 19.261093,
  category: 2
   )

Origin.create!(
  airport_id: 1657,
  name: "Henri Coandă International Airport",
  city: "Bucharest",
  country: "Romania",
  code: "OTP",
  latitude: 44.5711111,
  longitude: 26.085,
  category: 2
   )

Origin.create!(
  airport_id: 1194,
  name: "Sofia Airport",
  city: "Sofia",
  country: "Bulgaria",
  code: "SOF",
  latitude: 42.6966934204102,
  longitude: 23.4114360809326,
  category: 2
   )

Origin.create!(
  airport_id: 3093,
  name: "Indira Gandhi International Airport",
  city: "Delhi",
  country: "India",
  code: "DEL",
  latitude: 28.5665,
  longitude: 77.103104,
  category: 2
   )

Origin.create!(
  airport_id: 2997,
  name: "Chhatrapati Shivaji International Airport",
  city: "Mumbai",
  country: "India",
  code: "BOM",
  latitude: 19.0886993408,
  longitude: 72.8678970337,
  category: 2
   )

Origin.create!(
  airport_id: 3988,
  name: "Ministro Pistarini International Airport",
  city: "Buenos Aires",
  country: "Argentina",
  code: "EZE",
  latitude: -34.8222,
  longitude: -58.5358,
  category: 2
   )

Origin.create!(
  airport_id: 1590,
  name: "Ben Gurion International Airport",
  city: "Tel-aviv",
  country: "Israel",
  code: "TLV",
  latitude: 32.0113983154297,
  longitude: 34.8866996765137,
  category: 2
   )

Origin.create!(
  airport_id: 3380,
  name: "Chinggis Khaan International Airport",
  city: "Ulan Bator",
  country: "Mongolia",
  code: "ULN",
  latitude: 47.843102,
  longitude: 106.766998,
  category: 2
   )

Origin.create!(
  airport_id: 813,
  name: "OR Tambo International Airport",
  city: "Johannesburg",
  country: "South Africa",
  code: "JNB",
  latitude: -26.1392,
  longitude: 28.246,
  category: 2
   )

Origin.create!(
  airport_id: 797,
  name: "Cape Town International Airport",
  city: "Cape Town",
  country: "South Africa",
  code: "CPT",
  latitude: -33.9648017883,
  longitude: 18.6016998291,
  category: 2
   )

Origin.create!(
  airport_id: 1186,
  name: "Abeid Amani Karume International Airport",
  city: "Zanzibar",
  country: "Tanzania",
  code: "ZNZ",
  latitude: -6.22202,
  longitude: 39.224899,
  category: 2
   )

Origin.create!(
  airport_id: 3964,
  name: "Zvartnots International Airport",
  city: "Yerevan",
  country: "Armenia",
  code: "EVN",
  latitude: 40.1473007202,
  longitude: 44.3959007263,
  category: 2
   )

Origin.create!(
  airport_id: 1739,
  name: "Belgrade Nikola Tesla Airport",
  city: "Belgrade",
  country: "Serbia",
  code: "BEG",
  latitude: 44.8184013367,
  longitude: 20.3090991974,
  category: 2
   )

Origin.create!(
  airport_id: 1662,
  name: "Transilvania Târgu Mureş International Airport",
  city: "Tirgu Mures",
  country: "Romania",
  code: "TGM",
  latitude: 46.467700958252,
  longitude: 24.4125003814697,
  category: 2
   )

Origin.create!(
  airport_id: 3304,
  name: "Kuala Lumpur International Airport",
  city: "Kuala Lumpur",
  country: "Malaysia",
  code: "KUL",
  latitude: 2.745579957962,
  longitude: 101.70999908447,
  category: 2
   )

Origin.create!(
  airport_id: 2985,
  name: "Sheremetyevo International Airport",
  city: "Moscow",
  country: "Russia",
  code: "SVO",
  latitude: 55.972599,
  longitude: 37.4146,
  category: 2
   )

Origin.create!(
  airport_id: 4029,
  name: "Domodedovo International Airport",
  city: "Moscow",
  country: "Russia",
  code: "DME",
  latitude: 55.4087982177734,
  longitude: 37.9062995910645,
  category: 2
   )

Origin.create!(
  airport_id: 580,
  name: "Amsterdam Airport Schiphol",
  city: "Amsterdam",
  country: "Netherlands",
  code: "AMS",
  latitude: 52.308601,
  longitude: 4.76389,
  category: 2
   )

Origin.create!(
  airport_id: 1382,
  name: "Charles de Gaulle International Airport",
  city: "Paris",
  country: "France",
  code: "CDG",
  latitude: 49.012798,
  longitude: 2.55,
  category: 2
   )

Origin.create!(
  airport_id: 1354,
  name: "Nice-Côte d'Azur Airport",
  city: "Nice",
  country: "France",
  code: "NCE",
  latitude: 43.6584014893,
  longitude: 7.21586990356,
  category: 2
   )

Origin.create!(
  airport_id: 1555,
  name: "Leonardo da Vinci–Fiumicino Airport",
  city: "Rome",
  country: "Italy",
  code: "FCO",
  latitude: 41.8002778,
  longitude: 12.2388889,
  category: 2
   )

Origin.create!(
  airport_id: 1561,
  name: "Naples International Airport",
  city: "Naples",
  country: "Italy",
  code: "NAP",
  latitude: 40.886002,
  longitude: 14.2908,
  category: 2
   )

Origin.create!(
  airport_id: 302,
  name: "Brussels Airport",
  city: "Brussels",
  country: "Belgium",
  code: "BRU",
  latitude: 50.9014015198,
  longitude: 4.48443984985,
  category: 2
   )
Origin.create!(
  airport_id: 507,
  name: "London Heathrow Airport",
  city: "London",
  country: "United Kingdom",
  code: "LHR",
  latitude: 51.4706,
  longitude: -0.461941,
  category: 2
   )


Origin.create!(
  airport_id: 340,
  name: "Frankfurt am Main Airport",
  city: "Frankfurt",
  country: "Germany",
  code: "FRA",
  latitude: 50.033333,
  longitude: 8.570556,
  category: 2
   )

Origin.create!(
  airport_id: 3682,
  name: "Hartsfield Jackson Atlanta International Airport",
  city: "Atlanta",
  country: "United States",
  code: "ATL",
  latitude: 33.6367,
  longitude: -84.428101,
  category: 2
   )

Origin.create!(
  airport_id: 3364,
  name: "Beijing Capital International Airport",
  city: "Beijing",
  country: "China",
  code: "PEK",
  latitude: 40.0801010131836,
  longitude: 116.584999084473,
  category: 2
   )

Origin.create!(
  airport_id: 2188,
  name: "Dubai International Airport",
  city: "Dubai",
  country: "United Arab Emirates",
  code: "DXB",
  latitude: 25.2527999878,
  longitude: 55.3643989563,
  category: 2
   )

Origin.create!(
  airport_id: 3484,
  name: "Los Angeles International Airport",
  city: "Los Angeles",
  country: "United States",
  code: "LAX",
  latitude: 33.94250107,
  longitude: -118.4079971,
  category: 2
   )

Origin.create!(
  airport_id: 3830,
  name: "Chicago O'Hare International Airport",
  city: "Chicago",
  country: "United States",
  code: "ORD",
  latitude: 41.9786,
  longitude: -87.9048,
  category: 2
   )


Origin.create!(
  airport_id: 3077,
  name: "Hong Kong International Airport",
  city: "Hong Kong",
  country: "Hong Kong",
  code: "HKG",
  latitude: 22.308901,
  longitude: 113.915001,
  category: 2
   )


Origin.create!(
  airport_id: 3406,
  name: "Shanghai Pudong International Airport",
  city: "Shanghai",
  country: "China",
  code: "PVG",
  latitude: 31.1434001922607,
  longitude: 121.805000305176,
  category: 2
   )


Origin.create!(
 airport_id: 3930,
  name: "Incheon International Airport",
  city: "Seoul",
  country: "South Korea",
  code: "ICN",
  latitude: 37.4691009521484,
  longitude: 126.450996398926,
  category: 2
   )


Origin.create!(
  airport_id: 13696,
  name: "Istanbul Airport",
  city: "Istanbul",
  country: "Turkey",
  code: "IST",
  latitude: 41.275278,
  longitude: 28.751944,
  category: 2
   )



Origin.create!(
  airport_id: 3316,
  name: "Singapore Changi Airport",
  city: "Singapore",
  country: "Singapore",
  code: "SIN",
  latitude: 1.35019,
  longitude: 103.994003,
  category: 2
   )



Origin.create!(
  airport_id: 3797,
  name: "John F Kennedy International Airport",
  city: "New York",
  country: "United States",
  code: "JFK",
  latitude: 40.63980103,
  longitude: -73.77890015,
  category: 2
   )



Origin.create!(
  airport_id: 1229,
  name: "Adolfo Suárez Madrid–Barajas Airport",
  city: "Madrid",
  country: "Spain",
  code: "MAD",
  latitude: 40.471926,
  longitude: -3.56264,
  category: 2
   )

Origin.create!(
  airport_id: 1218,
  name: "Barcelona International Airport",
  city: "Barcelona",
  country: "Spain",
  code: "BCN",
  latitude: 41.2971,
  longitude: 2.07846,
  category: 2
   )

Origin.create!(
  airport_id: 193,
  name: "Lester B. Pearson International Airport",
  city: "Toronto",
  country: "Canada",
  code: "YYZ",
  latitude: 43.6772003174,
  longitude: -79.6305999756,
  category: 2
   )

Origin.create!(
  airport_id: 346,
  name: "Munich Airport",
  city: "Munich",
  country: "Germany",
  code: "MUC",
  latitude: 48.353802,
  longitude: 11.7861,
  category: 2
   )

Origin.create!(
  airport_id: 3494,
  name: "Newark Liberty International Airport",
  city: "Newark",
  country: "United States",
  code: "EWR",
  latitude: 40.6925010681152,
  longitude: -74.168701171875,
  category: 2
   )

Origin.create!(
  airport_id: 2564,
  name: "Guarulhos - Governador André Franco Montoro International Airport",
  city: "Sao Paulo",
  country: "Brazil",
  code: "GRU",
  latitude: -23.4355564117432,
  longitude: -46.4730567932129,
  category: 2
   )

Origin.create!(
  airport_id: 3146,
  name: "Vir Savarkar International Airport",
  city: "Port Blair",
  country: "India",
  code: "IXZ",
  latitude: 11.6412000656128,
  longitude: 92.7296981811523,
  category: 2
   )

Origin.create!(
  airport_id: 3361,
  name: "Sydney Kingsford Smith International Airport",
  city: "Sydney",
  country: "Australia",
  code: "SYD",
  latitude: -33.9460983276367,
  longitude: 151.177001953125,
  category: 2
   )

Origin.create!(
  airport_id: 3339,
  name: "Melbourne International Airport",
  city: "Melbourne",
  country: "Australia",
  code: "MEL",
  latitude: -37.673302,
  longitude: 144.843002,
  category: 2
   )


Origin.create!(
  airport_id: 2006,
  name: "Auckland International Airport",
  city: "Auckland",
  country: "New Zealand",
  code: "AKL",
  latitude: -37.0080986023,
  longitude: 174.792007446,
  category: 2
   )

Origin.create!(
  airport_id: 1128,
  name: "Cairo International Airport",
  city: "Cairo",
  country: "Egypt",
  code: "CAI",
  latitude: 30.1219005584717,
  longitude: 31.4055995941162,
  category: 2
   )

Origin.create!(
  airport_id: 2650,
  name: "Comodoro Arturo Merino Benítez International Airport",
  city: "Santiago",
  country: "Chile",
  code: "SCL",
  latitude: -33.3930015563965,
  longitude: -70.7857971191406,
  category: 2
   )


Origin.create!(
  airport_id: 3877,
  name: "McCarran International Airport",
  city: "Las Vegas",
  country: "United States",
  code: "LAS",
  latitude: 36.08010101,
  longitude: -115.1520004,
  category: 2
   )




Origin.create!(
  airport_id: 1885,
  name: "Juan Santamaria International Airport",
  city: "San Jose",
  country: "Costa Rica",
  code: "SJO",
  latitude: 9.99386024475098,
  longitude: -84.2088012695312,
  category: 2
   )

Origin.create!(
  airport_id: 737,
  name: "Stockholm-Arlanda Airport",
  city: "Stockholm",
  country: "Sweden",
  code: "ARN",
  latitude: 59.651901245117,
  longitude: 17.918600082397,
  category: 2
   )


Origin.create!(
  airport_id: 4105,
  name: "Hosea Kutako International Airport",
  city: "Windhoek",
  country: "Namibia",
  code: "WDH",
  latitude: -22.4799,
  longitude: 17.4709,
  category: 2
   )

Origin.create!(
  airport_id: 1871,
  name: "Tocumen International Airport",
  city: "Panama City",
  country: "Panama",
  code: "PTY",
  latitude: 9.0713596344,
  longitude: -79.3834991455,
  category: 2
   )

Origin.create!(
  airport_id: 1587,
  name: "Václav Havel Airport Prague",
  city: "Prague",
  country: "Czech Republic",
  code: "PRG",
  latitude: 50.1008,
  longitude: 14.26,
  category: 2
   )

Origin.create!(
  airport_id: 1165,
  name: "Kigali International Airport",
  city: "Kigali",
  country: "Rwanda",
  code: "KGL",
  latitude: -1.96863,
  longitude: 30.1395,
  category: 2
   )

Origin.create!(
  airport_id: 535,
  name: "Edinburgh Airport",
  city: "Edinburgh",
  country: "United Kingdom",
  code: "EDI",
  latitude: 55.9500007629395,
  longitude: -3.37249994277954,
  category: 2
   )

Origin.create!(
  airport_id: 609,
  name: "Copenhagen Kastrup Airport",
  city: "Copenhagen",
  country: "Denmark",
  code: "CPH",
  latitude: 55.617900848389,
  longitude: 12.656000137329,
  category: 2
   )

Origin.create!(
  airport_id: 287,
  name: "Tunis Carthage International Airport",
  city: "Tunis",
  country: "Tunisia",
  code: "TUN",
  latitude: 36.851001739502,
  longitude: 10.2271995544434,
  category: 2
   )

Origin.create!(
  airport_id: 287,
  name: "Tunis Carthage International Airport",
  city: "Tunis",
  country: "Tunisia",
  code: "TUN",
  latitude: 36.851001739502,
  longitude: 10.2271995544434,
  category: 2
   )


puts "creatin nature origins(3)"

Origin.create!(
  airport_id: 2673,
  name: "José Joaquín de Olmedo International Airport",
  city: "Guayaquil",
  country: "Ecuador",
  code: "GYE",
  latitude: -2.15741991997,
  longitude: -79.8835983276,
  category: 3
   )

Origin.create!(
  airport_id: 2762,
  name: "El Alto International Airport",
  city: "La Paz",
  country: "Bolivia",
  code: "LPB",
  latitude: -16.5132999420166,
  longitude: -68.1922988891602,
  category: 3
   )

Origin.create!(
  airport_id: 421,
  name: "Helsinki Vantaa Airport",
  city: "Helsinki",
  country: "Finland",
  code: "HEL",
  latitude: 60.317199707031,
  longitude: 24.963300704956,
  category: 3
   )

Origin.create!(
  airport_id: 1767,
  name: "La Aurora Airport",
  city: "Guatemala City",
  country: "Guatemala",
  code: "GUA",
  latitude: 14.5833,
  longitude: -90.527496,
  category: 3
   )

Origin.create!(
  airport_id: 3034,
  name: "Phnom Penh International Airport",
  city: "Phnom-penh",
  country: "Cambodia",
  code: "PNH",
  latitude: 11.5466003417969,
  longitude: 104.84400177002,
  category: 3
   )

Origin.create!(
  airport_id: 1863,
  name: "Augusto C. Sandino (Managua) International Airport",
  city: "Managua",
  country: "Nicaragua",
  code: "MGA",
  latitude: 12.1415004730225,
  longitude: -86.1681976318359,
  category: 3
   )


Origin.create!(
  airport_id: 2789,
  name: "Jorge Chávez International Airport",
  city: "Lima",
  country: "Peru",
  code: "LIM",
  latitude: -12.0219,
  longitude: -77.114305,
  category: 3
   )

Origin.create!(
  airport_id: 1745,
  name: "M. R. Štefánik Airport",
  city: "Bratislava",
  country: "Slovakia",
  code: "BTS",
  latitude: 48.1702003479004,
  longitude: 17.2126998901367,
  category: 3
   )

Origin.create!(
  airport_id: 3959,
  name: "Vilnius International Airport",
  city: "Vilnius",
  country: "Lithuania",
  code: "VNO",
  latitude: 54.634102,
  longitude: 25.285801,
  category: 3
   )

Origin.create!(
  airport_id: 3953,
  name: "Riga International Airport",
  city: "Riga",
  country: "Latvia",
  code: "RIX",
  latitude: 56.9235992431641,
  longitude: 23.9710998535156,
  category: 3
   )

Origin.create!(
  airport_id: 2877,
  name: "Douglas-Charles Airport",
  city: "Dominica",
  country: "Dominica",
  code: "DOM",
  latitude: 15.547,
  longitude: -61.299999,
  category: 3
   )

Origin.create!(
  airport_id: 189,
  name: "St. John's International Airport",
  city: "St. John's",
  country: "Canada",
  code: "YYT",
  latitude: 47.618598938,
  longitude: -52.7518997192,
  category: 3
   )

Origin.create!(
  airport_id: 2903,
  name: "Terrance B. Lettsome International Airport",
  city: "Tortola",
  country: "British Virgin Islands",
  code: "EIS",
  latitude: 18.4447994232178,
  longitude: -64.5429992675781,
  category: 3
   )

Origin.create!(
  airport_id: 1741,
  name: "Podgorica Airport",
  city: "Podgorica",
  country: "Montenegro",
  code: "TGD",
  latitude: 42.359402,
  longitude: 19.2519,
  category: 3
   )

Origin.create!(
  airport_id: 2256,
  name: "Babelthuap Airport",
  city: "Babelthuap",
  country: "Palau",
  code: "ROR",
  latitude: 7.36731,
  longitude: 134.544236,
   category: 3
   )

Origin.create!(
  airport_id: 16,
  name: "Keflavik International Airport",
  city: "Keflavik",
  country: "Iceland",
  code: "KEF",
  latitude: 63.985000610352,
  longitude: -22.605600357056,
  category: 3
   )

Origin.create!(
  airport_id: 7,
  name: "Narsarsuaq Airport",
  city: "Narssarssuaq",
  country: "Greenland",
  code: "UAK",
  latitude: 61.1604995728,
  longitude: -45.4259986877,
  category: 3
   )

Origin.create!(
  airport_id: 3774,
  name: "Ted Stevens Anchorage International Airport",
  city: "Anchorage",
  country: "United States",
  code: "ANC",
  latitude: 61.1744003295898,
  longitude: -149.996002197266,
  category: 3
   )

Origin.create!(
  airport_id: 1107,
  name: "Addis Ababa Bole International Airport",
  city: "Addis Ababa",
  country: "Ethiopia",
  code: "ADD",
  latitude: 8.97789001465,
  longitude: 38.7993011475,
  category: 3
   )



Origin.create!(
  airport_id: 4059,
  name: "Jomo Kenyatta International Airport",
  city: "Nairobi",
  country: "Kenya",
  code: "NBO",
  latitude: -1.31923997402,
  longitude: 36.9277992249,
  category: 3
   )

puts "creatin ski origins(4)"

Origin.create!(
  airport_id: 1678,
  name: "Zürich Airport",
  city: "Zurich",
  country: "Switzerland",
  code: "ZRH",
  latitude: 47.464699,
  longitude: 8.54917,
  category: 4
   )

Origin.create!(
  airport_id: 6479,
  name: "Courchevel Airport",
  city: "Courcheval",
  country: "France",
  code: "CVF",
  latitude: 45.3967018127441,
  longitude: 6.63471984863281,
  category: 4
   )

Origin.create!(
  airport_id: 3819,
  name: "City of Colorado Springs Municipal Airport",
  city: "Colorado Springs",
  country: "United States",
  code: "COS",
  latitude: 38.805801,
  longitude: -104.700996,
  category: 4
   )

Origin.create!(
  airport_id: 7001,
  name: "Aspen-Pitkin Co/Sardy Field",
  city: "Aspen",
  country: "United States",
  code: "ASE",
  latitude: 39.22320175,
  longitude: -106.8690033,
  category: 4
   )

Origin.create!(
  airport_id: 1423,
  name: "EuroAirport Basel-Mulhouse-Freiburg Airport",
  city: "Mulhouse",
  country: "France",
  code: "BSL",
  latitude: 47.59,
  longitude: 7.5291667,
  category: 4
   )

Origin.create!(
  airport_id: 1536,
  name: "Bolzano Airport",
  city: "Bolzano",
  country: "Italy",
  code: "BZO",
  latitude: 46.460201,
  longitude: 11.3264,
  category: 4
   )
Origin.create!(
  airport_id: 5995,
  name: "Okadama Airport",
  city: "Sapporo",
  country: "Japan",
  code: "OKD",
  latitude: 43.117447,
  longitude: 141.38134,
  category: 4
   )
Origin.create!(
  airport_id: 8080,
  name: "Méribel Altiport",
  city: "Ajaccio",
  country: "France",
  code: "MFX",
  latitude: 45.407003,
  longitude: 6.577942,
  category: 4
   )

Origin.create!(
  airport_id: 1610,
  name: "Innsbruck Airport",
  city: "Innsbruck",
  country: "Austria",
  code: "INN",
  latitude: 47.260201,
  longitude: 11.344,
  category: 4
   )

Origin.create!(
  airport_id: 1665,
  name: "Geneva Cointrin International Airport",
  city: "Geneva",
  country: "Switzerland",
  code: "GVA",
  latitude: 46.2380981445312,
  longitude: 6.10895013809204,
  category: 4
   )
Origin.create!(
  airport_id: 3536,
  name: "Salt Lake City International Airport",
  city: "Salt Lake City",
  country: "United States",
  code: "SLC",
  latitude: 40.7883987426758,
  longitude: -111.977996826172,
  category: 4
   )

Origin.create!(
  airport_id: 2513,
  name: "San Carlos De Bariloche Airport",
  city: "San Carlos De Bariloche",
  country: "Argentina",
  code: "BRC",
  latitude: -41.151199,
  longitude: -71.157501,
  category: 4
   )


puts "done"

