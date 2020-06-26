# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HOTELS = [
  { id: 9_023_924,
    name: 'Checkin Garbi Hotel',
    short_info: 'Отель расположен непосредственно рядом с пляжем. Недалеко от него есть супермаркет, а также пешеходная улица с множеством магазинов. Рекомендуем как бюджетный вариант размещения для любителей активного и пляжного отдыха.',
    hotel_info: "Построен: 1971 г. \nРеставрирован: 2014 г. \nРасположен: 72 км от аэропорта Барселоны, в 40 км от аэропорта Жироны, в центре г. Калелья.\nСостоит из главного 7-этажного здания. \nВсего 145 номеров. \nПляж: общественный песчаный оборудованный пляж в 50 м от отеля (1 береговая линия). Между пляжем и отелем дорога и променад. Зонты, шезлонги – платно. До пляжа Playa Pineda de Mar - 400 м.\nК оплате принимаются кредитные карты: Visa, MasterCard, Eurocard. \nНомер телефона: +34 937690858. \nАдрес: Calella, Passeig de les Roques 3-5." },
  { id: 9_023_925,
    name: 'Brezina Pension Hotel',
    short_info: 'Гостеприимный городской, находится в центре Праги неподалеку от Вацлавской площади. Гостиница прекрасно подходит для туристов выбирающих хорошее расположение и экономичную стоимость. Отель так же может принять и небольшие группы. Во дворе отеля расположен садик с фонтаном, где летом можно приятно отдохнуть.',
    hotel_info: "Расположен: в 15 минутах ходьбы до Вацлавской площади и Народного Музея Праги, в 29 км от аэропорта. В 5 мин. ходьбы от отеля - площадь I.P.Pavlova с одноименной станцией метро и трамвайной остановкой, откуда можно доехать без пересадки на Пражский Град, Малостранскую площадь, Карлов мост. \nСостоит из двух соединенных между собой зданий. \nВсего 50 номеров. \nК оплате принимаются кредитные карты: Visa, MasterCard. \nНомер телефона: +420224266779. \nАдрес: Prague, Legerova 41, Praha 2." },
  { id: 9_023_926,
    name: 'Vysehrad Hotel',
    short_info: 'Небольшой уютный отель, относящийся к памятникам архитектуры 19 века, расположен в старой части города Вышеград, в 5 минутах езды от центра, недалеко от Дворца Культуры (две станции метро). Интерьер номеров выполнен в стиле XIX века.',
    hotel_info: "Построен: 1995 г.\nРеставрирован: 2007 г.\nРасположен: в районе Прага 04, рядом с крепостью Вышеград и рекой Влтава, в 2 станциях метро от Вацлавской площади, в 20 км от аэропорта. \nВсего 26 номеров. \nК оплате принимаются кредитные карты: Visa, MasterCard. \nНомер телефона: +420 261 225 592. \nАдрес: Prague, Marie Cibulkové 29, 140 00 Praha 4." },
  { id: 9_023_927,
    name: 'Jurys Inn Hotel',
    short_info: 'Гостеприимный городской отель, расположенный близ популярных туристических мест. Уникальное месторасположение отеля наилучшим образом подходит для того, чтобы посмотреть и насладиться всем тем, что предлагает город Прага.',
    hotel_info: "Построен: 2009 г. \nРеставрирован: 2011 г. \nРасположен: в самом центре Праги, недалеко от Вацдавской площади, Старого Города и Карлова моста, в 150 м от реки, в 500 м от туристического центра, в 17 км от аэропорта. \nСостоит из 9-этажного здания. \nВсего 214 номеров. \nК оплате принимаются кредитные карты: Visa, MasterCard. \nНомер телефона: +420226222600. \nАдрес: Prague, Sokolovska, 11 Praha 1." }].freeze

HOTEL_ROOMS = [
  { 'id' => 14_736,
  'hotel_id' => 9_023_924,
  'room_type_id' => 11,
  'description' => 'Номер с двуспальной кроватью. Дополнительное спальное место. С балкона открывается вид на море.',
  'area' => 16 },
  { 'id' => 14_737,
    'hotel_id' => 9_023_924,
    'room_type_id' => 11,
    'description' => 'Номер с двуспальной кроватью. Дополнительное спальное место. С балкона открывается вид на море.',
    'area' => nil },
  { 'id' => 14_738,
    'hotel_id' => 9_023_924,
    'room_type_id' => 185,
    'description' => 'Номер с двуспальной кроватью или двумя односпальными. С балкона открывается прямой вид на море.',
    'area' => 16 },
  { 'id' => 14_739,
    'hotel_id' => 9_023_924,
    'room_type_id' => 42,
    'description' => "Номер с двуспальной кроватью или с двумя односпальными. \nС балкона открывается прямой вид на море или окрестности.",
    'area' => 16 },
  { 'id' => 14_740,
    'hotel_id' => 9_023_924,
    'room_type_id' => 1158,
    'description' => 'Уютный номер с двуспальной кроватью. Одноместное размещение.',
    'area' => 16 },
  { 'id' => 14_741,
    'hotel_id' => 9_023_924,
    'room_type_id' => 1174,
    'description' => 'Уютный номер с двуспальной кроватью. С балкона открывается вид на море. Одноместное размещение.',
    'area' => 16 },
  { 'id' => 14_742,
    'hotel_id' => 9_023_924,
    'room_type_id' => 595,
    'description' => 'Уютный номер, с балкона которого открывается вид на море.',
    'area' => 12 },
  { 'id' => 14_743,
    'hotel_id' => 9_023_924,
    'room_type_id' => 624,
    'description' => 'Уютный номер, с балкона которого открывается вид на море или окрестности.',
    'area' => 12 },
  { 'id' => 54_280,
    'hotel_id' => 9_023_925,
    'room_type_id' => 42,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной.',
    'area' => 18 },
  { 'id' => 54_281,
    'hotel_id' => 9_023_925,
    'room_type_id' => 460,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной. Дополнительное спальное место.',
    'area' => 20 },
  { 'id' => 54_282,
    'hotel_id' => 9_023_925,
    'room_type_id' => 1158,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной. Одноместное размещение.',
    'area' => 20 },
  { 'id' => 54_283,
    'hotel_id' => 9_023_925,
    'room_type_id' => 1158,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной. Одноместное размещение.',
    'area' => 20 },
  { 'id' => 54_277,
    'hotel_id' => 9_023_926,
    'room_type_id' => 42,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной.',
    'area' => 13 },
  { 'id' => 54_278,
    'hotel_id' => 9_023_926,
    'room_type_id' => 42,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной.',
    'area' => 13 },
  { 'id' => 54_279, 'hotel_id' => 9_023_926, 'room_type_id' => 624, 'description' => 'Небольшой номер с односпальной кроватью.', 'area' => 9 },
  { 'id' => 54_273,
    'hotel_id' => 9_023_927,
    'room_type_id' => 42,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной.',
    'area' => 23 },
  { 'id' => 54_274,
    'hotel_id' => 9_023_927,
    'room_type_id' => 460,
    'description' => 'Номер с тремя односпальными кроватями или с двуспальной и односпальной.',
    'area' => 28 },
  { 'id' => 54_275, 'hotel_id' => 9_023_927, 'room_type_id' => 48, 'description' => 'Номер с двуспальной и односпальной кроватью.', 'area' => 28 },
  { 'id' => 54_276,
    'hotel_id' => 9_023_927,
    'room_type_id' => 1158,
    'description' => 'Номер с двумя односпальными кроватями или одной двуспальной. Одноместное размещение.',
    'area' => 23 }
].freeze

ROOM_TYPES = [
  { 'id' => 11, 'name_en' => 'Standard sea view', 'name_ru' => 'Стандартный с видом на море' },
  { 'id' => 42, 'name_en' => 'Standard room', 'name_ru' => 'Стандартный номер' },
  { 'id' => 48, 'name_en' => 'Family room', 'name_ru' => 'Семейный номер' },
  { 'id' => 185, 'name_en' => 'Standard direct sea view', 'name_ru' => 'Стандартный с прямым видом на море' },
  { 'id' => 460, 'name_en' => 'Triple room', 'name_ru' => 'Трехместный номер' },
  { 'id' => 595, 'name_en' => 'Single Room Sea View', 'name_ru' => 'Одноместный с видом на море' },
  { 'id' => 624, 'name_en' => 'Standard Single Room', 'name_ru' => 'Одноместный номер' },
  { 'id' => 1158, 'name_en' => 'Double Room Single Use', 'name_ru' => 'Двухместный для одного гостя' },
  { 'id' => 1174, 'name_en' => 'Double Room Single Use Sea View', 'name_ru' => 'Двухместный для одного гостя с видом на море' }
].freeze

Hotel.destroy_all
HOTELS.each { |hotel| Hotel.create(hotel) }

RoomType.destroy_all
ROOM_TYPES.each { |type| RoomType.create(id: type['id'], name: type['name_ru']) }
HotelRoom.destroy_all
HOTEL_ROOMS.each { |room| HotelRoom.create(room) }

HOTELS_LOCALES = [
  { id: 9_023_924,
  locale: 'en',
  name: 'Checkin Garbi Hotel',
  short_info: 'The hotel is located directly next to the beach. Not far from it there is a supermarket, as well as a pedestrian street with many shops. Recommended as a budget accommodation option for lovers of active and beach holidays.',
  hotel_info: "Built: 1971 \n Renovated: 2014 \n Location: 72 km from Barcelona Airport, 40 km from Girona Airport, in the center of Calella. \n Consists of a main 7-storey building. \n Total 145 numbers. \n Beach: public equipped sandy beach 50 m from the hotel (1 coastline). There is a road and a promenade between the beach and the hotel. Umbrellas, chaise lounges - for a fee. Playa Pineda de Mar Beach is 400 meters away. \n Payment accepted: Credit cards: Visa, MasterCard, Eurocard. \n Phone number: +34 937690858. \n Address: Calella, Passeig de les Roques 3-5." },
  { id: 9_023_925,
  locale: 'en',
  name: 'Brezina Pension Hotel',
  short_info: 'Hospitable city, located in the center of Prague near Wenceslas Square. The hotel is perfect for tourists choosing a good location and economical value. The hotel can also accept small groups. In the courtyard of the hotel there is a garden with a fountain, where in summer you can relax.',
  hotel_info: "Location: a 15-minute walk to Wenceslas Square and the Prague National Museum, 29 km from the airport. 5 minutes walk from the hotel - I.P. Pavlova Square with the metro station of the same name and a tram stop, from where you can get directly to Prague Castle, Malostranska Square, Charles Bridge. \n Consists of two interconnected buildings. \n Total 50 numbers. \n Credit cards accepted: Visa, MasterCard. \n Phone number: +420 224 266 779. \n Address: Prague, Legerova 41, Praha 2." },
  { id: 9_023_926,
  locale: 'en',
  name: 'Vysehrad Hotel',
  short_info: 'A small cozy hotel, belonging to the monuments of architecture of the 19th century, is located in the old part of Vysehrad, a 5-minute drive from the center, near the Palace of Culture (two metro stations). The rooms are decorated in the style of the XIX century.',
  hotel_info: "Built: 1995 \n Renovated: 2007 \n Location: in Prague 04, near the Vysehrad fortress and the Vltava river, 2 metro stations from Wenceslas Square, 20 km from the airport. \n Total 26 numbers. \n Credit cards accepted: Visa, MasterCard. \n Phone number: +420 261 225 592. \n Address: Prague, Marie Cibulkové 29, 140 00 Praha 4." },
  { id: 9_023_927,
  locale: 'en',
  name: 'Jurys Inn Hotel',
  short_info: 'A welcoming city hotel located near popular tourist destinations. The unique location of the hotel is the best place to watch and enjoy all that Prague offers.',
  hotel_info: "Built: 2009 \n Renovated: 2011 \n Location: in the very center of Prague, not far from Wenceslas Square, Old Town and Charles Bridge, 150 m from the river, 500 m from the tourist center, 17 km from the airport. \n Consists of a 9-story building. \n Total 214 numbers. \n Credit cards accepted: Visa, MasterCard. \n Phone number: +420226222600. \n Address: Prague, Sokolovska, 11 Praha 1." }
].freeze

HOTELS_LOCALES.each do |hotel_locale| 
  Hotel.find(hotel_locale[:id]).translations.find_by(locale: :en).update(hotel_locale.except(:id))
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?