//
//  RestaurantData.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//

import Foundation
import CoreLocation

struct RestaurantData {
    static let restaurants: [Restaurant] = [
        Restaurant(
            id: "hantienger",
            name: "韓天閣",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市中正區羅斯福路四段78巷1弄11號",
            openingHours: "11:30 - 14:30、17:00 - 21:30",
            description: "公館站附近的平價韓式料理，主打豆腐鍋、石鍋拌飯、海鮮煎餅和多人共享餐點，適合午晚餐聚餐。",
            studentComments: [
                "離捷運站近，下課後過去很方便。",
                "想吃韓式鍋物或多人分食時很適合。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01418115075104, longitude: 121.53427005038625),
            googleMapsURL: googleMapsSearchURL(keyword: "公館韓天閣")
        ),
        Restaurant(
            id: "threeandthree",
            name: "三米三小館",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市中正區羅斯福路三段286巷4弄12號",
            openingHours: "11:00 - 14:30、17:00 - 21:30",
            description: "巷弄裡的米食小館，餐點以飯類、蓋飯和簡餐為主，不收服務費，適合想吃飽但不想花太多時間選擇時。",
            studentComments: [
                "份量足，適合午餐或晚餐。",
                "尖峰時間座位有限，可以避開正餐人潮。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01556, longitude: 121.53276),
            googleMapsURL: googleMapsSearchURL(keyword: "公館三米三")
        ),
        Restaurant(
            id: "ThaiFangwei",
            name: "泰豐味",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $200",
            address: "台北市中正區羅斯福路四段108巷2號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈的平價泰式料理，適合想吃椒麻雞、打拋豬、咖哩或酸辣口味的午晚餐。",
            studentComments: [
                "口味比較重，適合想換泰式料理的時候。",
                "價格對學生聚餐算友善。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01386,  longitude: 121.53535),
            googleMapsURL: googleMapsSearchURL(keyword: "公館泰豐味")
        ),
        Restaurant(
            id: "lanjia-guabao",
            name: "藍家割包",
            area: .gongguan,
            categories: [.lunch, .dinner, .streetFood],
            priceRange: "$80 - $180",
            address: "台北市中正區羅斯福路三段316巷8弄3號",
            openingHours: "11:00 - 22:00，週一公休",
            description: "公館經典小吃，以割包、四神湯和排骨玉米湯聞名，適合想快速吃台式小吃或外帶時。",
            studentComments: [
                "排隊速度通常還可以，適合當正餐或點心。",
                "想吃公館代表性小吃可以先從這間開始。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.015788, longitude: 121.532599),
            googleMapsURL: googleMapsSearchURL(keyword: "公館藍家割包")
        ),
        Restaurant(
            id: "dapu-teppanyaki-gongguan",
            name: "大埔鐵板燒 公館店",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市中正區汀州路三段287號",
            openingHours: "11:00 - 01:00",
            description: "平價鐵板燒連鎖店，主餐搭配青菜、白飯和湯品，適合想吃熱炒感、快速又有飽足感的一餐。",
            studentComments: [
                "一個人也很好吃，翻桌快。",
                "晚餐後段或宵夜前想吃熱食很方便。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01496, longitude: 121.53169),
            googleMapsURL: googleMapsSearchURL(keyword: "大埔鐵板燒 公館店")
        ),
        Restaurant(
            id: "haishan-chicken-rice",
            name: "海山雞肉飯",
            area: .gongguan,
            categories: [.lunch, .dinner, .streetFood],
            priceRange: "$80 - $180",
            address: "台北市中正區汀州路三段151號",
            openingHours: "11:00 - 21:30",
            description: "汀州路上的雞肉飯小吃店，適合想快速吃飯、預算有限或不知道吃什麼時。",
            studentComments: [
                "簡單快速，適合趕課前後解決一餐。",
                "想吃台式飯類小吃可以考慮。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01648, longitude: 121.52955),
            googleMapsURL: googleMapsSearchURL(keyword: "公館海山雞肉飯")
        ),
        Restaurant(
            id: "gongguan-stinky-tofu",
            name: "公館臭臭鍋",
            area: .gongguan,
            categories: [.lunch, .dinner, .lateNight],
            priceRange: "$150 - $250",
            address: "台北市中正區汀州路三段206號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館汀州路一帶的鍋物選擇，適合想吃熱湯、個人鍋或天氣冷時的晚餐。",
            studentComments: [
                "一人用餐方便，不太需要揪人。",
                "想吃熱呼呼的鍋物時可以列入口袋名單。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01578, longitude: 121.53125),
            googleMapsURL: googleMapsSearchURL(keyword: "公館臭臭鍋 汀州路三段206號")
        ),

//------------------------------------------------------------------------------------------------------------
        Restaurant(
            id: "fengcheng-roast",
            name: "鳳城燒臘",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市大安區新生南路三段58之3號",
            openingHours: "10:30 - 20:00",
            description: "台大新生南路側門附近的老字號燒臘店，適合想吃三寶飯、叉燒飯、油雞飯等港式便當時。",
            studentComments: [
                "離台大很近，午餐晚餐都方便。",
                "想吃飯類主餐、份量穩定時很適合。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02065, longitude: 121.53360),
            googleMapsURL: googleMapsSearchURL(keyword: "鳳城燒臘 新生南路三段58之3號")
        ),
        Restaurant(
            id: "cuichuen-vietnamese",
            name: "翠園越南餐廳",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市大安區新生南路三段20之3號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "新生南路上的越南料理老店，適合想吃河粉、越式春捲或清爽湯麵時。",
            studentComments: [
                "想換清爽一點的異國料理可以來。",
                "離台大北側不遠，適合午餐聚餐。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02330, longitude: 121.53385),
            googleMapsURL: googleMapsSearchURL(keyword: "翠園越南餐廳 新生南路三段20之3號")
        ),
        Restaurant(
            id: "noname-curry-ntu",
            name: "無名咖哩 台大店",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $300",
            address: "台北市大安區新生南路三段68之2號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大附近的咖哩專賣店，適合想快速吃一份咖哩飯、炸物或日式風味主餐時。",
            studentComments: [
                "一個人吃也很方便。",
                "想吃咖哩、不想花太多時間選餐時很適合。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01945, longitude: 121.53370),
            googleMapsURL: googleMapsSearchURL(keyword: "無名咖哩 台大店")
        ),
        Restaurant(
            id: "sushiexpress-ntu",
            name: "爭鮮迴轉壽司 台大店",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市大安區新生南路三段88之4號",
            openingHours: "11:00 - 21:30",
            description: "新生南路靠台大側的迴轉壽司店，適合想吃壽司、簡單日式餐點或快速用餐時。",
            studentComments: [
                "用餐時間彈性，臨時想吃日式很方便。",
                "適合不用揪太多人也能吃的一餐。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01735, longitude: 121.53395),
            googleMapsURL: googleMapsSearchURL(keyword: "爭鮮迴轉壽司 台大店")
        ),
        Restaurant(
            id: "guangyisihao",
            name: "光一肆號",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .lunch, .dinner, .dessert],
            priceRange: "$250 - $500",
            address: "台北市大安區新生南路三段76巷2號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大對面的老屋早午餐與全日餐廳，適合慢慢吃、聊天或想找氣氛舒服的聚餐地點。",
            studentComments: [
                "價格比一般學生餐高，但環境舒服。",
                "適合慶生、約會或想坐久一點的時候。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01870, longitude: 121.53335),
            googleMapsURL: googleMapsSearchURL(keyword: "光一肆號 新生南路三段76巷2號")
        ),
        Restaurant(
            id: "wenshan-coffee-ntu",
            name: "聞山咖啡 台大店",
            area: .wenzhouXinsheng,
            categories: [.drink, .dessert],
            priceRange: "$120 - $300",
            address: "台北市大安區新生南路三段56巷11之1號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "新生南路巷弄內的咖啡店，適合讀書、討論報告、喝咖啡或午後吃甜點。",
            studentComments: [
                "適合需要安靜坐一下的空堂。",
                "想找台大附近咖啡廳可以列入口袋名單。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02055, longitude: 121.53290),
            googleMapsURL: googleMapsSearchURL(keyword: "聞山咖啡 台大店")
        ),
        Restaurant(
            id: "taiyi-milk-king",
            name: "臺一牛乳大王",
            area: .wenzhouXinsheng,
            categories: [.dessert, .drink],
            priceRange: "$60 - $180",
            address: "台北市大安區新生南路三段82號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大旁經典甜品店，主打冰品、甜湯和牛奶類甜點，適合飯後或下午想吃甜的時候。",
            studentComments: [
                "吃完正餐後順路來很方便。",
                "炎熱天氣想吃冰可以優先考慮。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01785, longitude: 121.53385),
            googleMapsURL: googleMapsSearchURL(keyword: "臺一牛乳大王 新生南路三段82號")
        ),
        Restaurant(
            id: "zorba-house",
            name: "左巴好室．好事",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .lunch, .dinner, .dessert],
            priceRange: "$300 - $800",
            address: "台北市大安區溫州街74巷1弄2號",
            openingHours: "11:00 - 21:30，週五週六至 22:00",
            description: "溫州街巷弄裡的異國料理餐廳，提供早午餐、歐陸料理、義大利麵與甜點，適合多人聚餐。",
            studentComments: [
                "價格較高，但很適合慶生或聚餐。",
                "想找比較有氣氛的餐廳時可以考慮。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01925, longitude: 121.53180),
            googleMapsURL: googleMapsSearchURL(keyword: "左巴好室 好事 溫州街74巷1弄2號")
        ),
        Restaurant(
            id: "rebirth-cafe",
            name: "Rebirth Cafe & Restaurant",
            area: .wenzhouXinsheng,
            categories: [.dinner, .lateNight, .drink, .dessert],
            priceRange: "$250 - $600",
            address: "台北市大安區溫州街48巷2號",
            openingHours: "15:00 - 02:00",
            description: "溫州街巷弄內的深夜咖啡餐酒館，適合晚課後聊天、吃簡餐或想找晚一點還能坐的地方。",
            studentComments: [
                "營業到比較晚，適合晚餐後續攤。",
                "價格不是最低，但氣氛和時間彈性不錯。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02095, longitude: 121.53170),
            googleMapsURL: googleMapsSearchURL(keyword: "Rebirth Cafe Restaurant 溫州街48巷2號")
        ),
        Restaurant(
            id: "dao-curry",
            name: "稻咖哩",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $320",
            address: "台北市大安區溫州街79號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街上的咖哩專賣店，適合喜歡濃郁咖哩、想吃熱食或一人快速用餐時。",
            studentComments: [
                "咖哩選擇明確，不用想太久。",
                "靠近台大與溫州街住宅區，適合下課後走過去。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01935, longitude: 121.53125),
            googleMapsURL: googleMapsSearchURL(keyword: "稻咖哩 溫州街79號")
        ),
//-----------------------------------------------------------------------------------------------
        Restaurant(
            id: "ntu-sac-mcdonalds",
            name: "活大麥當勞",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner],
            priceRange: "$80 - $220",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "07:00 - 22:00",
            description: "第一學生活動中心一樓的速食選擇，適合早八前買早餐、課間快速用餐或想吃熟悉速食時。",
            studentComments: [
                "速度快，趕課前後很方便。",
                "座位多但尖峰時間人潮明顯。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01795, longitude: 121.53960),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 活大 麥當勞")
        ),
        Restaurant(
            id: "ntu-sac-yuxi-buffet",
            name: "活大御喜自助餐",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$80 - $180",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "11:00 - 20:00",
            description: "活大餐廳的中式自助餐櫃位，以秤重計價，菜色選擇多，適合想自己搭配主菜和青菜時。",
            studentComments: [
                "想吃比較均衡的一餐可以選自助餐。",
                "菜色多，適合不確定想吃什麼的時候。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01795, longitude: 121.53960),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 活大 御喜自助餐")
        ),
        Restaurant(
            id: "ntu-sac-vegetarian",
            name: "活大食香園素食館",
            area: .taidaCampus,
            categories: [.lunch, .dinner, .vegetarian],
            priceRange: "$70 - $160",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "週一至週五 11:00 - 14:00、16:30 - 19:00，週六日公休",
            description: "活大餐廳的素食自助餐，提供全素菜色、飯類和湯品，適合想吃清淡或素食的同學。",
            studentComments: [
                "校內素食選擇之一，方便又穩定。",
                "想吃蔬菜多一點的餐很適合。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01795, longitude: 121.53960),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 活大 食香園素食館")
        ),
        Restaurant(
            id: "ntu-sac-haiyin-brunch",
            name: "糧晨GET食",
            area: .taidaCampus,
            categories: [.breakfast, .lunch],
            priceRange: "$80 - $200",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "週一至週五 07:30 - 19:00，週六 07:30 - 14:00，週日公休",
            description: "活大餐廳的早午餐櫃位，提供早餐、輕食與簡餐，適合早八、空堂或午餐想吃輕一點時。",
            studentComments: [
                "早上有課時很實用。",
                "比正餐櫃位更適合想吃輕食的人。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01795, longitude: 121.53960),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 活大 海音 Brunch")
        ),
        Restaurant(
            id: "ntu-sac-sihai",
            name: "活大四海遊龍",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$80 - $180",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "週一至週六 11:00 - 19:30，週日公休",
            description: "活大餐廳的鍋貼、水餃櫃位，適合想吃簡單麵食、餃類或快速解決午晚餐時。",
            studentComments: [
                "鍋貼水餃是安全牌。",
                "想快速吃熱食又不想離開校內時方便。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01795, longitude: 121.53960),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 活大 四海遊龍")
        ),
        Restaurant(
            id: "ntu-women9-cafeteria",
            name: "女九自助餐",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner],
            priceRange: "$70 - $180",
            address: "國立臺灣大學女生第九宿舍 1樓",
            openingHours: "週一至週五早餐 07:00 - 13:30；自助餐 10:40 - 14:00、16:50 - 19:30",
            description: "女九宿舍內的校園餐廳，自助餐，適合總圖、文學院、女九周邊活動後就近用餐。",
            studentComments: [
                "離總圖和活大一帶近，雨天不用走太遠。",
                "自助餐和快餐選擇多，適合日常吃飯。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01915, longitude: 121.53920),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 女九宿舍餐廳")
        ),
        Restaurant(
            id: "ntu-women9-luwei",
            name: "女九九久滷贊舖",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$80 - $180",
            address: "國立臺灣大學女生第九宿舍 2 樓",
            openingHours: "11:30 - 19:00",
            description: "女九宿舍餐廳內的滷味選擇，適合想自己搭配蔬菜、肉類和主食，或晚餐想吃熱滷味時。",
            studentComments: [
                "滷味可以自己選料，很適合不知道吃什麼時。",
                "靠近宿舍區，晚餐時段很方便。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01915, longitude: 121.53920),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 女九 九久滷贊舖")
        ),
        Restaurant(
            id: "ntu-freshman-women-yelin-roast",
            name: "大一女椰林燒臘",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$80 - $160",
            address: "國立臺灣大學大一女宿舍餐廳",
            openingHours: "請以現場公告為準",
            description: "大一女美食廣場裡的燒臘選擇，適合想吃便當、叉燒、油雞或燒肉飯等快速主餐時。",
            studentComments: [
                "燒臘便當是校內經典學生餐選項。",
                "想吃飯類主餐又不想出校門時很適合。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.01495, longitude: 121.53875),
            googleMapsURL: googleMapsSearchURL(keyword: "台大 大一女 椰林燒臘")
        ),
//-----------------------------------------------------------------------------------------------------------
        Restaurant(
            id: "pure-ramen-heping",
            name: "裸湯拉麵・雞白湯 和平店",
            area: .taipower,
            categories: [.dinner, .lateNight, .streetFood],
            priceRange: "$220 - $350",
            address: "台北市大安區和平東路二段118巷4之1號1樓",
            openingHours: "週一至週四 11:30 - 21:00；週五至週日 11:30 - 02:00",
            description: "以雞白湯拉麵為主的拉麵店，湯頭濃郁，也有唐揚雞、章魚燒等小點，適合晚餐或宵夜。",
            studentComments: [
                "想吃熱湯拉麵時很適合。",
                "週末開到比較晚，晚課後也有機會吃得到。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02408, longitude: 121.54242),
            googleMapsURL: googleMapsSearchURL(keyword: "裸湯拉麵 雞白湯 和平店")
        ),
        Restaurant(
            id: "discover-pasta",
            name: "發現義大利麵",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$120 - $250",
            address: "台北市大安區和平東路二段118巷2之2號",
            openingHours: "11:00 - 21:00",
            description: "118巷入口附近的平價義大利麵店，份量足，適合想吃義大利麵、燉飯或焗烤時。",
            studentComments: [
                "價格對學生友善，份量也夠。",
                "在巷口附近，從科技大樓站過來很方便。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02418, longitude: 121.54260),
            googleMapsURL: googleMapsSearchURL(keyword: "發現義大利麵 和平東路二段118巷2之2號")
        ),
        Restaurant(
            id: "gepeipan-pasta",
            name: "格芮潘義式創意廚房",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $320",
            address: "台北市大安區和平東路二段118巷5之1號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "義大利麵與燉飯類型的餐廳，適合想吃口味變化比較多的義式主餐時。",
            studentComments: [
                "比一般便當更有聚餐感。",
                "想吃義式但不想走到公館時可以考慮。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02405, longitude: 121.54235),
            googleMapsURL: googleMapsSearchURL(keyword: "格芮潘 義式創意廚房 和平東路二段118巷5之1號")
        ),
        Restaurant(
            id: "im-pasta-heping",
            name: "I'm PASTA 和平店",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$160 - $300",
            address: "台北市大安區和平東路二段118巷50號",
            openingHours: "11:00 - 15:00、17:00 - 20:30",
            description: "118巷裡的義大利麵店，主打平價義式主餐，適合午餐、晚餐或多人各點一份。",
            studentComments: [
                "義大利麵選擇多，是不知道吃什麼時的安全牌。",
                "位置在118巷中段，附近餐廳很多。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02345, longitude: 121.54105),
            googleMapsURL: googleMapsSearchURL(keyword: "I'm PASTA 和平店")
        ),
        Restaurant(
            id: "lin-hainan-chicken",
            name: "林記海南雞飯 和平店",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$160 - $300",
            address: "台北市大安區和平東路二段118巷65號1樓",
            openingHours: "11:00 - 21:00",
            description: "南洋風味海南雞飯餐廳，主打海南雞、餐肉蛋公仔麵與港式飲品，適合想換口味時。",
            studentComments: [
                "雞飯香氣足，想吃南洋料理可以選。",
                "晚餐時段人潮不少，建議避開尖峰。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02305, longitude: 121.54048),
            googleMapsURL: googleMapsSearchURL(keyword: "林記海南雞飯 和平店")
        ),
        Restaurant(
            id: "meisai-yunnan-thai",
            name: "湄賽雲泰料理",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市大安區和平東路二段118巷39號",
            openingHours: "11:30 - 14:00、17:00 - 20:00，週二與週日可能公休",
            description: "118巷裡的雲泰料理店，適合想吃椒麻雞、打拋、咖哩或酸辣口味的午晚餐。",
            studentComments: [
                "口味比較重，適合配飯。",
                "想多人分食不同菜色時很方便。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02365, longitude: 121.54142),
            googleMapsURL: googleMapsSearchURL(keyword: "湄賽雲泰料理 和平東路二段118巷39號")
        ),
        Restaurant(
            id: "yimadangxian-malaysia",
            name: "憶馬當鮮 馬來西亞風味料理",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市大安區和平東路二段118巷61號",
            openingHours: "11:30 - 14:00、17:00 - 20:00，週六公休",
            description: "馬來西亞風味料理店，適合想吃南洋飯麵、香料口味或比較有特色的便飯時。",
            studentComments: [
                "想換異國料理但預算不想太高可以考慮。",
                "118巷後段的熱門選擇之一。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02315, longitude: 121.54060),
            googleMapsURL: googleMapsSearchURL(keyword: "憶馬當鮮 馬來西亞風味料理")
        ),
        Restaurant(
            id: "xin-jiyeno-bbq-rice",
            name: "鑫吉野烤肉飯 和平店",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$120 - $220",
            address: "台北市大安區和平東路二段118巷61之1號",
            openingHours: "週一至週六 10:00 - 20:10",
            description: "主打烤肉飯、烤雞腿飯和各式台式便當，適合想吃快速、份量穩定的一餐。",
            studentComments: [
                "便當類很適合趕課或外帶。",
                "想吃肉類主餐時很直覺。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02312, longitude: 121.54056),
            googleMapsURL: googleMapsSearchURL(keyword: "鑫吉野烤肉飯 和平店")
        ),
        Restaurant(
            id: "dingding-bento",
            name: "叮叮食堂 古早味便當",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$130 - $280",
            address: "台北市大安區和平東路二段118巷71號",
            openingHours: "11:00 - 14:00、17:00 - 19:30",
            description: "古早味便當專賣店，提供雞腿、豬排、封肉、鹹豬肉等飯類主餐。",
            studentComments: [
                "想吃台式便當但想比一般便當精緻一點可以選。",
                "外帶回教室或宿舍也方便。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02292, longitude: 121.54028),
            googleMapsURL: googleMapsSearchURL(keyword: "叮叮食堂 古早味便當 和平東路二段118巷71號")
        ),
        Restaurant(
            id: "taiwan-first-leg",
            name: "台灣第一腿",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$120 - $220",
            address: "台北市大安區和平東路二段118巷73號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "便當與炒飯類型店家，適合想快速吃飯、外帶便當或想吃腿排類主餐時。",
            studentComments: [
                "118巷後段的便當選擇。",
                "適合不想花太久等餐的午晚餐。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02286, longitude: 121.54020),
            googleMapsURL: googleMapsSearchURL(keyword: "台灣第一腿 和平東路二段118巷73號")
        ),
        Restaurant(
            id: "jiaxiang-meals",
            name: "家湘精緻簡餐",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$100 - $220",
            address: "台北市大安區和平東路二段118巷57號",
            openingHours: "週一至週五 11:00 - 19:30，週六 11:00 - 13:30，週日公休",
            description: "118巷裡的簡餐便當店，適合日常午餐、晚餐或想吃家常菜色時。",
            studentComments: [
                "簡單樸實，適合日常吃飯。",
                "價格和份量對學生友善。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02325, longitude: 121.54075),
            googleMapsURL: googleMapsSearchURL(keyword: "家湘精緻簡餐 和平東路二段118巷57號")
        ),
        Restaurant(
            id: "xiaolizi-lanzhou-noodles",
            name: "小李子蘭州牛肉拉麵館",
            area: .taipower,
            categories: [.lunch, .dinner, .lateNight],
            priceRange: "$80 - $220",
            address: "台北市大安區和平東路二段118巷57號",
            openingHours: "11:30 - 14:20、17:00 - 20:30",
            description: "以牛肉麵、清粥小菜與熱炒小菜聞名的店，適合想吃麵食、粥品或晚餐熱食時。",
            studentComments: [
                "想吃粥配小菜時很有特色。",
                "牛肉麵和家常小菜都適合當正餐。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02325, longitude: 121.54075),
            googleMapsURL: googleMapsSearchURL(keyword: "小李子蘭州牛肉拉麵館 和平東路二段118巷57號")
        ),
        Restaurant(
            id: "shangying-beef-noodles",
            name: "上穎牛肉麵 台大創始店",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $300",
            address: "台北市大安區和平東路二段118巷54弄35號",
            openingHours: "11:30 - 13:30、17:00 - 19:30",
            description: "118巷54弄裡的牛肉麵店，主打紅燒牛肉麵與牛筋牛肉麵，適合想吃飽足麵食時。",
            studentComments: [
                "天冷想喝熱湯時很適合。",
                "位置在巷弄裡，尖峰時段可以先確認營業。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02295, longitude: 121.54095),
            googleMapsURL: googleMapsSearchURL(keyword: "上穎牛肉麵 台大創始店")
        ),
        Restaurant(
            id: "zhongcheng-scallion-pancake",
            name: "忠誠山東蔥油餅",
            area: .taipower,
            categories: [.lunch, .dinner, .streetFood],
            priceRange: "$50 - $150",
            address: "台北市大安區和平東路二段118巷44號",
            openingHours: "11:00 - 21:00",
            description: "以蔥油餅和麵食為主的小吃店，適合想買點心、簡單吃或搭配其他餐點時。",
            studentComments: [
                "想吃鹹點心很方便。",
                "可以當正餐前後的小吃。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02355, longitude: 121.54122),
            googleMapsURL: googleMapsSearchURL(keyword: "忠誠山東蔥油餅 和平東路二段118巷44號")
        ),
        Restaurant(
            id: "oneway-cafe",
            name: "Oneway CAFE 玩味咖啡",
            area: .taipower,
            categories: [.lunch, .dinner, .drink, .dessert],
            priceRange: "$150 - $350",
            address: "台北市大安區和平東路二段118巷38號",
            openingHours: "11:30 - 22:00",
            description: "118巷裡的咖啡簡餐店，提供咖啡、飲品、甜點與主餐，適合聊天、讀書或吃輕鬆一點的晚餐。",
            studentComments: [
                "有咖啡和主餐，空堂想坐一下很方便。",
                "比一般便當店更適合聊天。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02372, longitude: 121.54150),
            googleMapsURL: googleMapsSearchURL(keyword: "Oneway CAFE 玩味咖啡 和平東路二段118巷38號")
        ),
        Restaurant(
            id: "berlin-bakery-bistro",
            name: "貝倫烘焙餐坊",
            area: .taipower,
            categories: [.breakfast, .lunch, .dinner, .dessert],
            priceRange: "$180 - $450",
            address: "台北市大安區和平東路二段118巷37號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "烘焙餐坊與西式簡餐店，提供早午餐、排餐、甜點和麵包類餐點，適合想坐下慢慢吃。",
            studentComments: [
                "適合小聚餐或想吃西式餐點時。",
                "價格比便當高，但餐點選擇較完整。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02370, longitude: 121.54155),
            googleMapsURL: googleMapsSearchURL(keyword: "貝倫烘焙餐坊 和平東路二段118巷37號")
        ),
        Restaurant(
            id: "haruya-gyoza",
            name: "餃子酒場 晴屋",
            area: .taipower,
            categories: [.dinner, .lateNight],
            priceRange: "$180 - $400",
            address: "台北市大安區和平東路二段118巷38號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "以煎餃、丼飯、串燒為主的日式小店，適合晚餐、下課後聚餐或想吃日式小食時。",
            studentComments: [
                "比一般快餐更有聚餐感。",
                "適合晚上想吃點日式小菜的人。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02372, longitude: 121.54150),
            googleMapsURL: googleMapsSearchURL(keyword: "餃子酒場 晴屋 和平東路二段118巷38號")
        ),
        Restaurant(
            id: "yonghe-ru-korean-chinese",
            name: "永和樓 韓式中華料理",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市大安區和平東路二段118巷52弄3號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "韓式中華料理店，適合想吃炸醬麵、辣海鮮湯麵、糖醋肉等韓式中餐時。",
            studentComments: [
                "想吃韓式但不是韓式烤肉時可以選。",
                "適合兩三人點不同品項分食。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02335, longitude: 121.54088),
            googleMapsURL: googleMapsSearchURL(keyword: "永和樓 韓式中華料理 和平東路二段118巷52弄3號")
        ),
        Restaurant(
            id: "liangji-thirteen-spice",
            name: "良記十三香",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$100 - $220",
            address: "台北市大安區和平東路二段118巷52弄3號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "巷弄裡的台式小餐館，主打荷葉飯、滷味與台式菜色，適合想吃傳統便飯或特色小菜時。",
            studentComments: [
                "想吃台式口味但不想只吃便當可以考慮。",
                "巷弄位置低調，適合探索型吃飯。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02335, longitude: 121.54088),
            googleMapsURL: googleMapsSearchURL(keyword: "良記十三香 和平東路二段118巷52弄3號")
        ),
        Restaurant(
            id: "haoyiwai-pasta-ntu",
            name: "好義外 PASTA 台大店",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $280",
            address: "台北市大安區和平東路二段118巷46號1樓",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "義大利麵外帶外送型店家，適合想吃義式但偏向快速解決的一餐。",
            studentComments: [
                "外帶回宿舍或教室很方便。",
                "想吃 pasta 又不想坐太久可以選。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02350, longitude: 121.54116),
            googleMapsURL: googleMapsSearchURL(keyword: "好義外 PASTA 台大店")
        ),
        Restaurant(
            id: "chiao-wei-bento",
            name: "巧味快餐",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$90 - $180",
            address: "台北市大安區和平東路二段118巷43號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷裡的便當快餐選擇，適合想要快速、便宜、飽足的一餐。",
            studentComments: [
                "日常便當選項，適合趕時間。",
                "想省預算時可以放入口袋名單。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02355, longitude: 121.54125),
            googleMapsURL: googleMapsSearchURL(keyword: "巧味快餐 和平東路二段118巷43號")
        ),
        Restaurant(
            id: "miss-li-spicy-hotpot",
            name: "李記小姐姐麻辣燙",
            area: .taipower,
            categories: [.lunch, .dinner, .lateNight],
            priceRange: "$100 - $220",
            address: "台北市大安區和平東路二段118巷4弄2號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "麻辣燙類型店家，適合想自由選料、吃熱湯、或晚餐想吃辣時。",
            studentComments: [
                "可以自己搭配菜、肉和主食。",
                "天冷或想吃辣時很直覺。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: 25.02395, longitude: 121.54205),
            googleMapsURL: googleMapsSearchURL(keyword: "李記小姐姐麻辣燙 和平東路二段118巷4弄2號")
        ),
        entry(
            id: "liujia-pan-fried-bun",
            name: "劉家水煎包",
            area: .gongguan,
            categories: [.breakfast, .lunch, .streetFood],
            priceRange: "$20 - $100",
            address: "台北市中正區汀州路三段189號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈的人氣銅板小吃，適合早餐、點心或趕時間外帶。",
            latitude: 25.0159,
            longitude: 121.5314
        ),
        entry(
            id: "chen-sanding-brown-sugar-milk",
            name: "陳三鼎黑糖青蛙鮮奶",
            area: .gongguan,
            categories: [.dessert, .drink],
            priceRange: "$50 - $100",
            address: "台北市中正區羅斯福路三段316巷8弄2號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館經典飲品店，以黑糖珍珠鮮奶與甜飲聞名，適合飯後買一杯。",
            latitude: 25.0158,
            longitude: 121.5327
        ),
        entry(
            id: "longtan-douhua",
            name: "龍潭豆花",
            area: .gongguan,
            categories: [.dessert, .drink],
            priceRange: "$40 - $100",
            address: "台北市中正區汀州路三段237號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館老字號豆花甜品，適合吃完正餐後續甜點。",
            latitude: 25.0154,
            longitude: 121.5319
        ),
        entry(
            id: "brothers-oyster-vermicelli",
            name: "兄弟蚵仔麵線",
            area: .gongguan,
            categories: [.lunch, .dinner, .streetFood],
            priceRange: "$60 - $150",
            address: "台北市中正區羅斯福路四段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈的台式小吃選擇，適合想快速吃麵線、蚵仔類小吃時。",
            latitude: 25.0146,
            longitude: 121.5343
        ),
        entry(
            id: "weilun-noodle-house",
            name: "維綸麵食館",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$90 - $220",
            address: "台北市中正區羅斯福路四段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館一帶的麵食館，適合想吃湯麵、乾麵或簡單熱食。",
            latitude: 25.0149,
            longitude: 121.5336
        ),
        entry(
            id: "shunyuan-restaurant",
            name: "順園小館",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $400",
            address: "台北市中正區汀州路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈的中式小館，適合同學聚餐或多人點菜分食。",
            latitude: 25.0154,
            longitude: 121.5310
        ),
        entry(
            id: "yiji-squid-thick-soup",
            name: "意記客家魷魚焿",
            area: .gongguan,
            categories: [.lunch, .dinner, .streetFood],
            priceRange: "$70 - $180",
            address: "台北市中正區羅斯福路四段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "客家風味魷魚焿與飯麵小吃，適合想吃台式熱湯類正餐。",
            latitude: 25.0144,
            longitude: 121.5340
        ),
        entry(
            id: "abolang-taiwanese-bistro",
            name: "阿薄郎台式小酒館",
            area: .gongguan,
            categories: [.dinner, .lateNight],
            priceRange: "$250 - $600",
            address: "台北市中正區羅斯福路四段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台式小酒館與熱炒風格餐廳，適合晚餐聚餐或下課後聊天。",
            latitude: 25.0148,
            longitude: 121.5332
        ),
        entry(
            id: "shanxi-knife-cut-noodle",
            name: "山西刀削麵",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$100 - $220",
            address: "台北市中正區汀州路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "以刀削麵、牛肉麵與家常麵點為主，適合想吃飽足麵食時。",
            latitude: 25.0151,
            longitude: 121.5316
        ),
        entry(
            id: "yu-poke-gongguan",
            name: "YU POKE 夏威夷生魚飯",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "夏威夷生魚飯與健康碗類選擇，適合想吃清爽、高蛋白餐點。",
            latitude: 25.0149,
            longitude: 121.5338
        ),
        entry(
            id: "happy-lemon-gongguan",
            name: "HAPPY LEMON 公館店",
            area: .gongguan,
            categories: [.drink],
            priceRange: "$45 - $120",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "連鎖手搖飲品牌，適合飯後、逛公館或上課前買飲料。",
            latitude: 25.0153,
            longitude: 121.5329
        ),
        entry(
            id: "daidai-tea-gongguan",
            name: "黛黛茶",
            area: .gongguan,
            categories: [.drink],
            priceRange: "$45 - $120",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈手搖飲選擇，適合想喝茶飲、奶茶或果茶時。",
            latitude: 25.0147,
            longitude: 121.5334
        ),
        entry(
            id: "baidicheng-spicy-luwei",
            name: "白帝城川式滷味",
            area: .gongguan,
            categories: [.dinner, .lateNight, .streetFood],
            priceRange: "$80 - $220",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "川式滷味與辣味小吃，適合晚餐、宵夜或想自由選料時。",
            latitude: 25.0145,
            longitude: 121.5336
        ),
        entry(
            id: "yimuri-gongguan",
            name: "一沐日 公館店",
            area: .gongguan,
            categories: [.drink],
            priceRange: "$45 - $120",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "茶飲連鎖店，適合想喝茶類、奶蓋或粉粿飲品時。",
            latitude: 25.0150,
            longitude: 121.5331
        ),
        entry(
            id: "zhubenwu-gongguan",
            name: "築本屋",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$160 - $320",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈日式飯類與定食選擇，適合想吃簡單日式主餐。",
            latitude: 25.0149,
            longitude: 121.5341
        ),
        entry(
            id: "miss-energy-gongguan",
            name: "能量小姐",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "健康餐盒與蛋白質餐點類型，適合健身後或想吃清爽飯盒時。",
            latitude: 25.0155,
            longitude: 121.5325
        ),
        entry(
            id: "big-dog-vermicelli",
            name: "大狗麵線",
            area: .gongguan,
            categories: [.lunch, .dinner, .streetFood],
            priceRange: "$60 - $160",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台式麵線小吃，適合想快速吃熱食或搭配小點。",
            latitude: 25.0147,
            longitude: 121.5342
        ),
        entry(
            id: "chiyou-teppanyaki",
            name: "喫尤平價鐵板燒",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $300",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "平價鐵板燒選擇，適合想吃現炒熱食與白飯主餐。",
            latitude: 25.0152,
            longitude: 121.5318
        ),
        entry(
            id: "deji-auntie",
            name: "德記姑姑的店",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$120 - $260",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館商圈日常簡餐與飯麵選擇，適合平日午晚餐。",
            latitude: 25.0143,
            longitude: 121.5337
        ),
        entry(
            id: "dasheng-tonkatsu",
            name: "大盛豬排",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "炸豬排與日式飯類餐點，適合想吃酥脆主餐和飽足份量時。",
            latitude: 25.0150,
            longitude: 121.5324
        ),
        entry(
            id: "yunthai-town-gongguan",
            name: "雲泰小鎮餐坊",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$160 - $320",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "雲泰料理餐坊，適合想吃椒麻雞、打拋或酸辣口味時。",
            latitude: 25.0148,
            longitude: 121.5320
        ),
        entry(
            id: "mister-chee-kopitiam-gongguan",
            name: "池先生 Kopitiam 公館店",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市中正區羅斯福路四段公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "馬來西亞風味餐廳，適合想吃椰漿飯、叻沙或南洋料理時。",
            latitude: 25.0152,
            longitude: 121.5335
        ),
        entry(
            id: "eggplant-curry-gongguan",
            name: "茄子咖哩 公館店",
            area: .gongguan,
            categories: [.lunch, .dinner],
            priceRange: "$160 - $320",
            address: "台北市中正區公館商圈",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "咖哩飯與炸物主餐選擇，適合想吃日式咖哩和快速飽足的一餐。",
            latitude: 25.0146,
            longitude: 121.5330
        ),
        entry(
            id: "good-time-cafe-gongguan",
            name: "好處 Have A Nice Day",
            area: .gongguan,
            categories: [.lunch, .dinner, .dessert, .drink],
            priceRange: "$180 - $450",
            address: "台北市中正區羅斯福路四段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "公館巷弄咖啡簡餐店，適合聚會、讀書或想找能坐久一點的地方。",
            latitude: 25.0141,
            longitude: 121.5345
        ),
        entry(
            id: "youmoutoohana-wenzhou",
            name: "羊毛與花・溫州",
            area: .wenzhouXinsheng,
            categories: [.dessert, .drink],
            priceRange: "$150 - $350",
            address: "台北市大安區新生南路三段60巷1號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大旁日系咖啡館，適合讀書、聊天或午後甜點咖啡。",
            latitude: 25.0205,
            longitude: 121.5330
        ),
        entry(
            id: "cafe-bastille-wenzhou",
            name: "Cafe Bastille 溫州店",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner, .drink, .dessert],
            priceRange: "$220 - $600",
            address: "台北市大安區溫州街91號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街歐式咖啡餐酒館，適合晚餐、甜點或想找氣氛舒服的聚餐。",
            latitude: 25.0185,
            longitude: 121.5310
        ),
        entry(
            id: "iwantice-wenzhou",
            name: "好想吃冰 かき氷",
            area: .wenzhouXinsheng,
            categories: [.dessert, .drink],
            priceRange: "$120 - $280",
            address: "台北市大安區溫州街80號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街日式刨冰甜點店，適合下午或飯後想吃冰。",
            latitude: 25.0188,
            longitude: 121.5315
        ),
        entry(
            id: "witch-house",
            name: "女巫店",
            area: .wenzhouXinsheng,
            categories: [.dinner, .lateNight, .drink],
            priceRange: "$250 - $600",
            address: "台北市大安區新生南路三段56巷7號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大附近知名藝文餐酒空間，適合晚餐、飲品與表演活動前後聚會。",
            latitude: 25.0206,
            longitude: 121.5331
        ),
        entry(
            id: "piccolo-angolo",
            name: "Piccolo Angolo 角落",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner, .dessert],
            priceRange: "$250 - $600",
            address: "台北市大安區溫州街74巷5弄3號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街巷弄義式餐廳，適合義大利麵、燉飯或小聚餐。",
            latitude: 25.0193,
            longitude: 121.5317
        ),
        entry(
            id: "maryjane-pizza-ntu",
            name: "Maryjane Pizza 台大店",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $450",
            address: "台北市大安區溫州街74巷1弄1號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大旁披薩餐廳，適合多人分食或想吃西式餐點時。",
            latitude: 25.0194,
            longitude: 121.5318
        ),
        entry(
            id: "violet-cafe-wenzhou",
            name: "紫藤廬",
            area: .wenzhouXinsheng,
            categories: [.drink, .dessert],
            priceRange: "$250 - $700",
            address: "台北市大安區新生南路三段16巷1號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "新生南路巷內的人文茶館，適合喝茶、聊天或需要安靜空間時。",
            latitude: 25.0240,
            longitude: 121.5332
        ),
        entry(
            id: "xiaoman-cafe",
            name: "小慢",
            area: .wenzhouXinsheng,
            categories: [.drink, .dessert],
            priceRange: "$250 - $700",
            address: "台北市大安區泰順街16巷39號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "鄰近溫州街與青田街的人文茶飲空間，適合慢慢坐下聊天。",
            latitude: 25.0230,
            longitude: 121.5310
        ),
        entry(
            id: "ao-cafe-wenzhou",
            name: "青鳥 Bleu & Book",
            area: .wenzhouXinsheng,
            categories: [.drink, .dessert],
            priceRange: "$150 - $350",
            address: "台北市大安區新生南路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "書店咖啡型空間，適合討論報告、讀書或簡單喝咖啡。",
            latitude: 25.0201,
            longitude: 121.5334
        ),
        entry(
            id: "picnic-cafe-wenzhou",
            name: "野餐咖啡",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .lunch, .drink, .dessert],
            priceRange: "$180 - $420",
            address: "台北市大安區溫州街附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街咖啡與輕食選擇，適合早午餐、空堂或下午茶。",
            latitude: 25.0200,
            longitude: 121.5316
        ),
        entry(
            id: "matcha-one-wenzhou",
            name: "Matcha One 溫州店",
            area: .wenzhouXinsheng,
            categories: [.dessert, .drink],
            priceRange: "$180 - $420",
            address: "台北市大安區溫州街附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "抹茶甜點與飲品店，適合想吃甜點或找安靜午後行程。",
            latitude: 25.0197,
            longitude: 121.5314
        ),
        entry(
            id: "mr-brown-ntu",
            name: "伯朗咖啡館 台大店",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .lunch, .drink, .dessert],
            priceRange: "$100 - $300",
            address: "台北市大安區新生南路三段88號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "台大新生南路側的咖啡與輕食選擇，適合讀書、等人或簡單用餐。",
            latitude: 25.0175,
            longitude: 121.5338
        ),
        entry(
            id: "dante-coffee-ntu",
            name: "丹堤咖啡 台大店",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .lunch, .drink],
            priceRange: "$100 - $280",
            address: "台北市大安區新生南路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "連鎖咖啡輕食，適合早餐、簡單午餐或需要插空坐一下。",
            latitude: 25.0181,
            longitude: 121.5336
        ),
        entry(
            id: "louisa-ntu-xinsheng",
            name: "路易莎咖啡 台大新生店",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .lunch, .drink],
            priceRange: "$80 - $250",
            address: "台北市大安區新生南路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "平價咖啡與輕食，適合早八前買咖啡或課間用餐。",
            latitude: 25.0191,
            longitude: 121.5337
        ),
        entry(
            id: "machi-curry-xinsheng",
            name: "麻吉咖哩",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$150 - $280",
            address: "台北市大安區新生南路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "新生南路附近咖哩飯選擇，適合一人快速午晚餐。",
            latitude: 25.0190,
            longitude: 121.5334
        ),
        entry(
            id: "wenzhou-stewed-rice",
            name: "溫州街蘿蔔絲餅達人",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .streetFood],
            priceRange: "$35 - $120",
            address: "台北市大安區和平東路一段186之1號附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街附近排隊小吃，適合早餐、點心或外帶。",
            latitude: 25.0260,
            longitude: 121.5321
        ),
        entry(
            id: "shida-night-market-wenzhou-edge",
            name: "溫州街蔥抓餅",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .streetFood],
            priceRange: "$40 - $120",
            address: "台北市大安區溫州街附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街周邊的台式點心，適合下午或晚餐前後補一份小吃。",
            latitude: 25.0215,
            longitude: 121.5315
        ),
        entry(
            id: "qingtian-76",
            name: "青田七六",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner, .dessert],
            priceRange: "$350 - $900",
            address: "台北市大安區青田街7巷6號",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "青田街歷史建築餐廳，適合聚餐、約會或想找較有氣氛的餐點。",
            latitude: 25.0281,
            longitude: 121.5320
        ),
        entry(
            id: "mimi-cafe-wenzhou",
            name: "米米咖啡",
            area: .wenzhouXinsheng,
            categories: [.drink, .dessert],
            priceRange: "$120 - $300",
            address: "台北市大安區溫州街附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街附近咖啡甜點選擇，適合空堂讀書或下午茶。",
            latitude: 25.0207,
            longitude: 121.5312
        ),
        entry(
            id: "yamazaki-ntu-xinsheng",
            name: "Yamazaki 山崎麵包 台大店",
            area: .wenzhouXinsheng,
            categories: [.breakfast, .dessert],
            priceRange: "$50 - $180",
            address: "台北市大安區新生南路三段附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "麵包與點心選擇，適合早餐、下午點心或外帶。",
            latitude: 25.0180,
            longitude: 121.5338
        ),
        entry(
            id: "wenzhou-noodle-house",
            name: "溫州街麵食館",
            area: .wenzhouXinsheng,
            categories: [.lunch, .dinner],
            priceRange: "$90 - $220",
            address: "台北市大安區溫州街附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "溫州街日常麵食選擇，適合想吃湯麵、乾麵或簡單正餐。",
            latitude: 25.0199,
            longitude: 121.5311
        ),
        entry(
            id: "ntu-sac-hi-life",
            name: "活大萊爾富便利商店",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner, .drink],
            priceRange: "$40 - $180",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "請以現場公告為準",
            description: "活大內的便利商店，適合早餐、飲料、微波食品或趕課外帶。",
            latitude: 25.01795,
            longitude: 121.53960
        ),
        entry(
            id: "ntu-sac-qiushitang",
            name: "活大丘蒔堂",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$100 - $220",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "請以現場公告為準",
            description: "活大美食街飯麵簡餐櫃位，適合校內快速午晚餐。",
            latitude: 25.01795,
            longitude: 121.53960
        ),
        entry(
            id: "ntu-sac-liyang-bakery",
            name: "活大里洋烘焙坊",
            area: .taidaCampus,
            categories: [.breakfast, .dessert, .drink],
            priceRange: "$50 - $180",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "請以現場公告為準",
            description: "活大麵包點心櫃位，適合早餐、下午點心或買飲料搭配。",
            latitude: 25.01795,
            longitude: 121.53960
        ),
        entry(
            id: "ntu-sac-xushi-hotpot",
            name: "活大緒食一鍋小麻辣",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$120 - $260",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "請以現場公告為準",
            description: "活大鍋物與麻辣燙類櫃位，適合想吃熱湯、自由搭配食材時。",
            latitude: 25.01795,
            longitude: 121.53960
        ),
        entry(
            id: "ntu-sac-twins-egg-pancake",
            name: "活大 TWINS 手工蛋餅",
            area: .taidaCampus,
            categories: [.breakfast, .lunch],
            priceRange: "$60 - $160",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "請以現場公告為準",
            description: "活大早餐與蛋餅櫃位，適合早八、空堂或想吃輕食時。",
            latitude: 25.01795,
            longitude: 121.53960
        ),
        entry(
            id: "ntu-sac-shuiyuntang",
            name: "活大水雲堂",
            area: .taidaCampus,
            categories: [.drink],
            priceRange: "$40 - $120",
            address: "國立臺灣大學第一學生活動中心 1 樓",
            openingHours: "請以現場公告為準",
            description: "活大飲料櫃位，適合午餐後或課間買飲品。",
            latitude: 25.01795,
            longitude: 121.53960
        ),
        entry(
            id: "ntu-freshman-women-bistrot",
            name: "大一女比司多",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner],
            priceRange: "$70 - $180",
            address: "國立臺灣大學大一女宿舍餐廳",
            openingHours: "請以現場公告為準",
            description: "大一女美食餐廳櫃位，適合宿舍區與長興街附近快速用餐。",
            latitude: 25.01495,
            longitude: 121.53875
        ),
        entry(
            id: "ntu-freshman-women-haohan-buffet",
            name: "大一女昊翰校園自助餐",
            area: .taidaCampus,
            categories: [.lunch, .dinner],
            priceRange: "$70 - $180",
            address: "國立臺灣大學大一女宿舍餐廳",
            openingHours: "請以現場公告為準",
            description: "大一女美食餐廳自助餐，適合想自己搭配飯菜和青菜時。",
            latitude: 25.01495,
            longitude: 121.53875
        ),
        entry(
            id: "ntu-freshman-women-fruit",
            name: "大一女悠悠鮮果屋",
            area: .taidaCampus,
            categories: [.drink, .dessert],
            priceRange: "$50 - $150",
            address: "國立臺灣大學大一女宿舍餐廳",
            openingHours: "請以現場公告為準",
            description: "大一女飲品與水果類選擇，適合飯後補飲料或清爽點心。",
            latitude: 25.01495,
            longitude: 121.53875
        ),
        entry(
            id: "ntu-freshman-women-familymart",
            name: "大一女全家便利商店",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner, .drink],
            priceRange: "$40 - $180",
            address: "國立臺灣大學大一女宿舍餐廳",
            openingHours: "請以現場公告為準",
            description: "大一女宿舍區便利商店，適合早餐、飲料、微波食品或臨時補給。",
            latitude: 25.01495,
            longitude: 121.53875
        ),
        entry(
            id: "ntu-xiaoxiaofu-snack",
            name: "小小福小吃部",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner, .streetFood],
            priceRange: "$40 - $160",
            address: "國立臺灣大學小小福，鹿鳴廣場附近",
            openingHours: "請以現場公告為準",
            description: "小小福販售熟食、早餐與校園小吃，適合共同教室、鹿鳴廣場周邊用餐。",
            latitude: 25.0186,
            longitude: 121.5375
        ),
        entry(
            id: "ntu-xiaoxiaofu-rice-ball",
            name: "小小福飯糰蛋餅",
            area: .taidaCampus,
            categories: [.breakfast, .streetFood],
            priceRange: "$40 - $120",
            address: "國立臺灣大學小小福，鹿鳴廣場附近",
            openingHours: "請以現場公告為準",
            description: "小小福早餐類選擇，適合早八前快速買飯糰、蛋餅或小點。",
            latitude: 25.0186,
            longitude: 121.5375
        ),
        entry(
            id: "ntu-xiaoxiaofu-vegetarian",
            name: "小小福素食",
            area: .taidaCampus,
            categories: [.lunch, .dinner, .vegetarian],
            priceRange: "$70 - $160",
            address: "國立臺灣大學小小福，鹿鳴廣場附近",
            openingHours: "請以現場公告為準",
            description: "小小福素食與簡餐選擇，適合想在校內吃清淡或素食餐點。",
            latitude: 25.0186,
            longitude: 121.5375
        ),
        entry(
            id: "ntu-xiaoxiaofu-coop",
            name: "小小福合作社熟食",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .drink],
            priceRange: "$30 - $150",
            address: "國立臺灣大學小小福，鹿鳴廣場附近",
            openingHours: "請以現場公告為準",
            description: "合作社熟食、飲料與點心補給，適合課間或討論會前後快速購買。",
            latitude: 25.0186,
            longitude: 121.5375
        ),
        entry(
            id: "ntu-agriculture-showroom-waffle",
            name: "小木屋鬆餅 台大店",
            area: .taidaCampus,
            categories: [.breakfast, .dessert, .drink],
            priceRange: "$60 - $180",
            address: "國立臺灣大學農業陳列館附近",
            openingHours: "請以現場公告為準",
            description: "校內鬆餅與飲品選擇，適合點心、下午茶或輕食。",
            latitude: 25.0175,
            longitude: 121.5358
        ),
        entry(
            id: "ntu-agriculture-bistrot-breakfast",
            name: "比司多早餐 台大店",
            area: .taidaCampus,
            categories: [.breakfast, .lunch],
            priceRange: "$50 - $160",
            address: "國立臺灣大學農業陳列館附近",
            openingHours: "請以現場公告為準",
            description: "校內早餐與輕食選擇，適合早八或課間外帶。",
            latitude: 25.0175,
            longitude: 121.5358
        ),
        entry(
            id: "ntu-lixian-building-bento",
            name: "禮賢樓便當",
            area: .taidaCampus,
            categories: [.lunch],
            priceRange: "$80 - $160",
            address: "國立臺灣大學禮賢樓",
            openingHours: "請以現場公告為準",
            description: "行政大樓與鹿鳴廣場周邊的午餐便當選擇，適合中午快速解決。",
            latitude: 25.0182,
            longitude: 121.5368
        ),
        entry(
            id: "ntu-male1-my-kitchen-buffet",
            name: "男一我家廚房自助餐",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner],
            priceRange: "$70 - $180",
            address: "台北市大安區長興街50號，國立臺灣大學男一舍餐廳",
            openingHours: "請以現場公告為準",
            description: "男一舍餐廳自助餐，適合長興街、體育館與宿舍區周邊用餐。",
            latitude: 25.0137,
            longitude: 121.5426
        ),
        entry(
            id: "ntu-male1-corner-late-night",
            name: "男一轉角哥深夜食堂",
            area: .taidaCampus,
            categories: [.dinner, .lateNight],
            priceRange: "$90 - $220",
            address: "台北市大安區長興街50號，國立臺灣大學男一舍餐廳",
            openingHours: "請以現場公告為準",
            description: "男一舍餐廳晚餐與深夜餐點選擇，適合晚課或社團活動後用餐。",
            latitude: 25.0137,
            longitude: 121.5426
        ),
        entry(
            id: "ntu-male1-breakfast",
            name: "男一我家廚房早餐吧",
            area: .taidaCampus,
            categories: [.breakfast],
            priceRange: "$40 - $120",
            address: "台北市大安區長興街50號，國立臺灣大學男一舍餐廳",
            openingHours: "請以現場公告為準",
            description: "男一舍早餐櫃位，適合宿舍區早晨快速買早餐。",
            latitude: 25.0137,
            longitude: 121.5426
        ),
        entry(
            id: "ntu-male8-yumin",
            name: "男八育民商行",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .dinner, .drink],
            priceRange: "$40 - $180",
            address: "台北市大安區長興街31號，國立臺灣大學男八舍",
            openingHours: "請以現場公告為準",
            description: "男八宿舍區便利餐飲與補給選擇，適合長興街與宿舍區同學。",
            latitude: 25.0141,
            longitude: 121.5434
        ),
        entry(
            id: "ntu-social-science-cafe",
            name: "社科院咖啡輕食",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .drink],
            priceRange: "$80 - $220",
            address: "國立臺灣大學社會科學院",
            openingHours: "請以現場公告為準",
            description: "社科院周邊咖啡與輕食，適合上課前後討論或簡單用餐。",
            latitude: 25.0200,
            longitude: 121.5422
        ),
        entry(
            id: "ntu-management-cafe",
            name: "管院咖啡輕食",
            area: .taidaCampus,
            categories: [.breakfast, .lunch, .drink],
            priceRange: "$80 - $220",
            address: "國立臺灣大學管理學院",
            openingHours: "請以現場公告為準",
            description: "管院周邊咖啡、輕食與便當型補給，適合討論報告或課間用餐。",
            latitude: 25.0145,
            longitude: 121.5382
        ),
        entry(
            id: "ntu-new-moon-pavilion",
            name: "新月台餐廳",
            area: .taidaCampus,
            categories: [.lunch, .dinner, .drink],
            priceRange: "$200 - $500",
            address: "國立臺灣大學新月台",
            openingHours: "請以現場公告為準",
            description: "新生南路側門附近餐飲空間，適合校內聚餐或需要較正式用餐環境。",
            latitude: 25.0182,
            longitude: 121.5348
        ),
        entry(
            id: "antu-heping",
            name: "安好食 和平店",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$180 - $350",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷周邊簡餐選擇，適合午晚餐想吃飯類或輕鬆聚餐。",
            latitude: 25.0236,
            longitude: 121.5414
        ),
        entry(
            id: "haohezi-heping",
            name: "好盒子餐盒",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$120 - $240",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷周邊餐盒選擇，適合外帶、趕課或想吃均衡飯盒。",
            latitude: 25.0232,
            longitude: 121.5409
        ),
        entry(
            id: "ruanjia-noodle-heping",
            name: "阮家麵食館",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$90 - $220",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷周邊麵食選擇，適合想吃乾麵、湯麵或小菜。",
            latitude: 25.0234,
            longitude: 121.5412
        ),
        entry(
            id: "heping-118-breakfast",
            name: "118巷早午餐",
            area: .taipower,
            categories: [.breakfast, .lunch],
            priceRange: "$60 - $180",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷周邊早午餐選擇，適合早課前或中午想吃輕食。",
            latitude: 25.0239,
            longitude: 121.5420
        ),
        entry(
            id: "heping-118-luwei",
            name: "118巷滷味",
            area: .taipower,
            categories: [.dinner, .lateNight, .streetFood],
            priceRange: "$80 - $220",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷晚餐與宵夜滷味選擇，適合自由搭配青菜、肉類和主食。",
            latitude: 25.0233,
            longitude: 121.5410
        ),
        entry(
            id: "heping-118-tea",
            name: "118巷手搖飲",
            area: .taipower,
            categories: [.drink],
            priceRange: "$40 - $120",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷周邊飲料選擇，適合飯後、課間或外帶搭餐。",
            latitude: 25.0237,
            longitude: 121.5418
        ),
        entry(
            id: "heping-118-bbq-bento",
            name: "118巷燒肉便當",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$100 - $220",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷便當與燒肉飯類選擇，適合想吃快速飽足主餐。",
            latitude: 25.0230,
            longitude: 121.5404
        ),
        entry(
            id: "heping-118-dumpling",
            name: "118巷水餃麵館",
            area: .taipower,
            categories: [.lunch, .dinner],
            priceRange: "$80 - $200",
            address: "台北市大安區和平東路二段118巷附近",
            openingHours: "請以 Google Maps 即時資訊為準",
            description: "118巷周邊水餃與麵食選擇，適合想吃簡單熱食時。",
            latitude: 25.0235,
            longitude: 121.5413
        ),
    ]

    private static func entry(
        id: String,
        name: String,
        area: CampusArea,
        categories: [FoodCategory],
        priceRange: String,
        address: String,
        openingHours: String,
        description: String,
        latitude: Double,
        longitude: Double
    ) -> Restaurant {
        Restaurant(
            id: id,
            name: name,
            area: area,
            categories: categories,
            priceRange: priceRange,
            address: address,
            openingHours: openingHours,
            description: description,
            studentComments: [
                "適合想在\(area.rawValue)快速找一餐時參考。",
                "實際營業時間與品項建議以店家現場或 Google Maps 為準。"
            ],
            coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
            googleMapsURL: googleMapsSearchURL(keyword: "\(name) \(address)")
        )
    }

    private static func googleMapsSearchURL(keyword: String) -> URL {
        let encodedKeyword = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? keyword
        return URL(string: "https://www.google.com/maps/search/?api=1&query=\(encodedKeyword)")!
    }
}
