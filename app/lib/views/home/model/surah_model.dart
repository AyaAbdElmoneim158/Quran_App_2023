class SurahModel {
  SurahModel({
    required this.id,
    required this.name,
    required this.nameEn,
    required this.nameTranslation,
    required this.words,
    required this.letters,
    required this.type,
    required this.typeEn,
    required this.ar,
    required this.en,
    required this.array,
  });
  late final int id;
  late final String name;
  late final String nameEn;
  late final String nameTranslation;
  late final int words;
  late final int letters;
  late final String type;
  late final String typeEn;
  late final String ar;
  late final String en;
  late final List<Array> array;

  SurahModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameEn = json['name_en'];
    nameTranslation = json['name_translation'];
    words = json['words'];
    letters = json['letters'];
    type = json['type'];
    typeEn = json['type_en'];
    ar = json['ar'];
    en = json['en'];
    array = List.from(json['array']).map((e) => Array.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['name_en'] = nameEn;
    _data['name_translation'] = nameTranslation;
    _data['words'] = words;
    _data['letters'] = letters;
    _data['type'] = type;
    _data['type_en'] = typeEn;
    _data['ar'] = ar;
    _data['en'] = en;
    _data['array'] = array.map((e) => e.toJson()).toList();
    return _data;
  }

 static List<SurahModel> dummySurah = [
    SurahModel.fromJson({
      "id": 1,
      "name": "الفاتحة",
      "name_en": "The Opening",
      "name_translation": "Al-Fatihah",
      "words": 29,
      "letters": 139,
      "type": "مكية",
      "type_en": "meccan",
      "ar":
          "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ (1) الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ (2) الرَّحْمَنِ الرَّحِيمِ (3) مَالِكِ يَوْمِ الدِّينِ (4) إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ (5) اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ (6) صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ (7)",
      "en":
          "In the name of Allah, the Entirely Merciful, the Especially Merciful (1) [All] praise is [due] to Allah, Lord of the worlds (2) The Entirely Merciful, the Especially Merciful (3) Sovereign of the Day of Recompense (4) It is You we worship and You we ask for help (5) Guide us to the straight path (6) The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray (7)",
      "array": [
        {
          "id": 1,
          "ar": "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
          "en":
              "In the name of Allah, the Entirely Merciful, the Especially Merciful",
          "filename": "001.mp3",
          "path": "/audio/001/001.mp3",
          "dir": "/audio/001",
          "size": 27426
        },
        {
          "id": 2,
          "ar": "ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ",
          "en": "[All] praise is [due] to Allah, Lord of the worlds",
          "filename": "001.mp3",
          "path": "/audio/001/002.mp3",
          "dir": "/audio/001",
          "size": 26773
        },
        {
          "id": 3,
          "ar": "ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
          "en": "The Entirely Merciful, the Especially Merciful",
          "filename": "001.mp3",
          "path": "/audio/001/003.mp3",
          "dir": "/audio/001",
          "size": 21809
        },
        {
          "id": 4,
          "ar": "مَٰلِكِ يَوۡمِ ٱلدِّينِ",
          "en": "Sovereign of the Day of Recompense",
          "filename": "001.mp3",
          "path": "/audio/001/004.mp3",
          "dir": "/audio/001",
          "size": 17761
        },
        {
          "id": 5,
          "ar": "إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ",
          "en": "It is You we worship and You we ask for help",
          "filename": "001.mp3",
          "path": "/audio/001/005.mp3",
          "dir": "/audio/001",
          "size": 25075
        },
        {
          "id": 6,
          "ar": "ٱهۡدِنَا ٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ",
          "en": "Guide us to the straight path",
          "filename": "001.mp3",
          "path": "/audio/001/006.mp3",
          "dir": "/audio/001",
          "size": 23377
        },
        {
          "id": 7,
          "ar":
              "صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ وَلَا ٱلضَّآلِّينَ",
          "en":
              "The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray",
          "filename": "001.mp3",
          "path": "/audio/001/007.mp3",
          "dir": "/audio/001",
          "size": 63736
        },
      ]
    }),
    SurahModel.fromJson(
      {
        "id": 114,
        "name": "الناس",
        "name_en": "Mankind",
        "name_translation": "An-Nas",
        "words": 20,
        "letters": 80,
        "type": "مكية",
        "type_en": "meccan",
        "ar": "قُلْ أَعُوذُ بِرَبِّ النَّاسِ (1) مَلِكِ النَّاسِ (2) إِلَهِ النَّاسِ (3) مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ (4) الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ (5) مِنَ الْجِنَّةِ وَالنَّاسِ (6)",
        "en": "Say, \"I seek refuge in the Lord of mankind (1) The Sovereign of mankind (2) The God of mankind (3) From the evil of the retreating whisperer (4) Who whispers [evil] into the breasts of mankind (5) From among the jinn and mankind (6)",
        "array": [
            {
                "id": 1,
                "ar": "قُلۡ أَعُوذُ بِرَبِّ ٱلنَّاسِ",
                "en": "Say, \"I seek refuge in the Lord of mankind",
                "filename": "114.mp3",
                "path": "/audio/114/001.mp3",
                "dir": "/audio/114",
                "size": 19067
            },
            {
                "id": 2,
                "ar": "مَلِكِ ٱلنَّاسِ",
                "en": "The Sovereign of mankind",
                "filename": "114.mp3",
                "path": "/audio/114/002.mp3",
                "dir": "/audio/114",
                "size": 10577
            },
            {
                "id": 3,
                "ar": "إِلَٰهِ ٱلنَّاسِ",
                "en": "The God of mankind",
                "filename": "114.mp3",
                "path": "/audio/114/003.mp3",
                "dir": "/audio/114",
                "size": 17630
            },
            {
                "id": 4,
                "ar": "مِن شَرِّ ٱلۡوَسۡوَاسِ ٱلۡخَنَّاسِ",
                "en": "From the evil of the retreating whisperer",
                "filename": "114.mp3",
                "path": "/audio/114/004.mp3",
                "dir": "/audio/114",
                "size": 35393
            },
            {
                "id": 5,
                "ar": "ٱلَّذِي يُوَسۡوِسُ فِي صُدُورِ ٱلنَّاسِ",
                "en": "Who whispers [evil] into the breasts of mankind",
                "filename": "114.mp3",
                "path": "/audio/114/005.mp3",
                "dir": "/audio/114",
                "size": 31083
            },
            {
                "id": 6,
                "ar": "مِنَ ٱلۡجِنَّةِ وَٱلنَّاسِ",
                "en": "From among the jinn and mankind",
                "filename": "114.mp3",
                "path": "/audio/114/006.mp3",
                "dir": "/audio/114",
                "size": 31475
            }
        ]
    }
    ),
    SurahModel.fromJson(
       {
        "id": 113,
        "name": "الفلق",
        "name_en": "The Dawn",
        "name_translation": "Al-Falaq",
        "words": 23,
        "letters": 71,
        "type": "مكية",
        "type_en": "meccan",
        "ar": "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ (1) مِنْ شَرِّ مَا خَلَقَ (2) وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ (3) وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (4) وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ (5)",
        "en": "Say, \"I seek refuge in the Lord of daybreak (1) From the evil of that which He created (2) And from the evil of darkness when it settles (3) And from the evil of the blowers in knots (4) And from the evil of an envier when he envies (5)",
        "array": [
            {
                "id": 1,
                "ar": "قُلۡ أَعُوذُ بِرَبِّ ٱلۡفَلَقِ",
                "en": "Say, \"I seek refuge in the Lord of daybreak",
                "filename": "113.mp3",
                "path": "/audio/113/001.mp3",
                "dir": "/audio/113",
                "size": 16063
            },
            {
                "id": 2,
                "ar": "مِن شَرِّ مَا خَلَقَ",
                "en": "From the evil of that which He created",
                "filename": "113.mp3",
                "path": "/audio/113/002.mp3",
                "dir": "/audio/113",
                "size": 16846
            },
            {
                "id": 3,
                "ar": "وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ",
                "en": "And from the evil of darkness when it settles",
                "filename": "113.mp3",
                "path": "/audio/113/003.mp3",
                "dir": "/audio/113",
                "size": 24552
            },
            {
                "id": 4,
                "ar": "وَمِن شَرِّ ٱلنَّفَّـٰثَٰتِ فِي ٱلۡعُقَدِ",
                "en": "And from the evil of the blowers in knots",
                "filename": "113.mp3",
                "path": "/audio/113/004.mp3",
                "dir": "/audio/113",
                "size": 27557
            },
            {
                "id": 5,
                "ar": "وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ",
                "en": "And from the evil of an envier when he envies",
                "filename": "113.mp3",
                "path": "/audio/113/005.mp3",
                "dir": "/audio/113",
                "size": 25206
            }
        ]
    }
    ),
    SurahModel.fromJson(
       {
        "id": 112,
        "name": "الإخلاص",
        "name_en": "Sincerity",
        "name_translation": "Al-Ikhlas",
        "words": 15,
        "letters": 47,
        "type": "مكية",
        "type_en": "meccan",
        "ar": "قُلْ هُوَ اللَّهُ أَحَدٌ (1) اللَّهُ الصَّمَدُ (2) لَمْ يَلِدْ وَلَمْ يُولَدْ (3) وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ (4)",
        "en": "Say, \"He is Allah, [who is] One (1) Allah, the Eternal Refuge (2) He neither begets nor is born (3) Nor is there to Him any equivalent (4)",
        "array": [
            {
                "id": 1,
                "ar": "قُلۡ هُوَ ٱللَّهُ أَحَدٌ",
                "en": "Say, \"He is Allah, [who is] One",
                "filename": "112.mp3",
                "path": "/audio/112/001.mp3",
                "dir": "/audio/112",
                "size": 14887
            },
            {
                "id": 2,
                "ar": "ٱللَّهُ ٱلصَّمَدُ",
                "en": "Allah, the Eternal Refuge",
                "filename": "112.mp3",
                "path": "/audio/112/002.mp3",
                "dir": "/audio/112",
                "size": 10577
            },
            {
                "id": 3,
                "ar": "لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ",
                "en": "He neither begets nor is born",
                "filename": "112.mp3",
                "path": "/audio/112/003.mp3",
                "dir": "/audio/112",
                "size": 12536
            },
            {
                "id": 4,
                "ar": "وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ",
                "en": "Nor is there to Him any equivalent",
                "filename": "112.mp3",
                "path": "/audio/112/004.mp3",
                "dir": "/audio/112",
                "size": 17108
            }
        ]
    }
    ),
    SurahModel.fromJson(
      {
        "id": 111,
        "name": "المسد",
        "name_en": "The Palm Fibre",
        "name_translation": "Al-Masad",
        "words": 29,
        "letters": 81,
        "type": "مكية",
        "type_en": "meccan",
        "ar": "تَبَّتْ يَدَا أَبِي لَهَبٍ وَتَبَّ (1) مَا أَغْنَى عَنْهُ مَالُهُ وَمَا كَسَبَ (2) سَيَصْلَى نَارًا ذَاتَ لَهَبٍ (3) وَامْرَأَتُهُ حَمَّالَةَ الْحَطَبِ (4) فِي جِيدِهَا حَبْلٌ مِنْ مَسَدٍ (5)",
        "en": "May the hands of Abu Lahab be ruined, and ruined is he (1) His wealth will not avail him or that which he gained (2) He will [enter to] burn in a Fire of [blazing] flame (3) And his wife [as well] - the carrier of firewood (4) Around her neck is a rope of [twisted] fiber (5)",
        "array": [
            {
                "id": 1,
                "ar": "تَبَّتۡ يَدَآ أَبِي لَهَبٖ وَتَبَّ",
                "en": "May the hands of Abu Lahab be ruined, and ruined is he",
                "filename": "111.mp3",
                "path": "/audio/111/001.mp3",
                "dir": "/audio/111",
                "size": 30169
            },
            {
                "id": 2,
                "ar": "مَآ أَغۡنَىٰ عَنۡهُ مَالُهُۥ وَمَا كَسَبَ",
                "en": "His wealth will not avail him or that which he gained",
                "filename": "111.mp3",
                "path": "/audio/111/002.mp3",
                "dir": "/audio/111",
                "size": 27687
            },
            {
                "id": 3,
                "ar": "سَيَصۡلَىٰ نَارٗا ذَاتَ لَهَبٖ",
                "en": "He will [enter to] burn in a Fire of [blazing] flame",
                "filename": "111.mp3",
                "path": "/audio/111/003.mp3",
                "dir": "/audio/111",
                "size": 20504
            },
            {
                "id": 4,
                "ar": "وَٱمۡرَأَتُهُۥ حَمَّالَةَ ٱلۡحَطَبِ",
                "en": "And his wife [as well] - the carrier of firewood",
                "filename": "111.mp3",
                "path": "/audio/111/004.mp3",
                "dir": "/audio/111",
                "size": 24030
            },
            {
                "id": 5,
                "ar": "فِي جِيدِهَا حَبۡلٞ مِّن مَّسَدِۭ",
                "en": "Around her neck is a rope of [twisted] fiber",
                "filename": "111.mp3",
                "path": "/audio/111/005.mp3",
                "dir": "/audio/111",
                "size": 24160
            }
        ]
    },
    ),

  ];
}

class Array {
  Array({
    required this.id,
    required this.ar,
    required this.en,
    required this.filename,
    required this.path,
    required this.dir,
    required this.size,
  });
  late final int id;
  late final String ar;
  late final String en;
  late final String filename;
  late final String path;
  late final String dir;
  late final int size;

  Array.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ar = json['ar'];
    en = json['en'];
    filename = json['filename'];
    path = json['path'];
    dir = json['dir'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['ar'] = ar;
    _data['en'] = en;
    _data['filename'] = filename;
    _data['path'] = path;
    _data['dir'] = dir;
    _data['size'] = size;
    return _data;
  }
}



    
     