// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
    required this.success,
    required this.message,
    required this.data,
  });

  bool success;
  String message;
  List<HomeItemModel> data;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        success: json["success"],
        message: json["message"],
        data: List<HomeItemModel>.from(json["data"].map((x) => HomeItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        // "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class HomeItemModel {
  HomeItemModel({
    required this.title,
    this.subtitle,
    required this.type,
    required this.categorytype,
    required this.categoryid,
    required this.hasseeall,
    required this.data,
    required this.isDiscovery,
    this.lang,
    this.index,
  });

  String title;
  String? subtitle;
  String type;
  String categorytype;
  String categoryid;
  bool hasseeall;
  List<DatumDatum> data;
  int isDiscovery;
  String? lang;
  int? index;

  factory HomeItemModel.fromJson(Map<String, dynamic> json) => HomeItemModel(
        title: json["title"],
        subtitle: json["subtitle"],
        type: json["type"],
        categorytype: json["categorytype"],
        categoryid: json["categoryid"],
        hasseeall: json["hasseeall"],
        // data: List<Map<String, dynamic>>.from(json["data"]),
        data: List<DatumDatum>.from(json["data"].map((x) => DatumDatum.fromJson(x))),
        isDiscovery: json["isDiscovery"],
        lang: json["lang"],
        index: json["index"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "type": type,
        "categorytype": categorytype,
        "categoryid": categoryid,
        "hasseeall": hasseeall,
        // "data": data,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "isDiscovery": isDiscovery,
        "lang": lang,
        "index": index,
      };
}

class DatumDatum {
  DatumDatum({
    this.name,
    this.id,
    this.img,
    this.starttime,
    this.endtime,
    this.longdesc,
    this.arohana,
    this.avarohana,
    this.chId,
    this.status,
    this.namekeyword,
    this.desc,
    this.listenname,
    this.listenid,
    this.listennameEn,
    this.profileImg,
    this.type,
    this.artistId,
    this.profileGuid,
    this.personId,
    this.castType,
    this.castTypeName,
    this.title,
    this.subtitle,
    this.category,
    this.albumTitle,
    this.music,
    this.albumTitleEn,
    this.musicEn,
    this.imageUrl,
    this.datumAlbumId,
    this.albumTitleUtf,
    this.hit,
    this.nameEn,
    this.songTitle,
    this.songUtf,
    this.songId,
    this.actors,
    this.singers,
    this.singersUtf,
    this.musicUtf,
    this.lyricist,
    this.lyricistUtf,
    this.album,
    this.movieUtf,
    this.albumId,
    this.songAlbumId,
    this.rating,
    this.duration,
    this.songKeywords,
    this.media,
    this.cdId,
    this.cdImg,
    this.cdImg50,
    this.origSongId,
    this.m3U8,
    this.labelId,
    this.labelName,
    this.position,
    this.relYear,
    this.votes,
    this.songTitleAlias,
    this.monthlyCount,
    this.songStatus,
    this.upvotes,
    this.downvotes,
    this.hasHls,
    this.enc,
    this.enc32,
    this.yearlyCount,
    this.titlestr,
    this.albumstr,
    this.albumAlias,
    this.raagam,
    this.lifecount,
    this.songTitleNs,
    this.albumid,
    this.songid,
    this.thaala,
    this.thaalam,
    this.actorsUtf,
    this.musicDirUtf,
    this.albumUtf,
    this.albumIdPk,
    this.folderId,
    this.songMonthly,
    this.tagid,
  });

  String? name;
  String? id;
  String? img;
  String? starttime;
  String? endtime;
  String? longdesc;
  String? arohana;
  String? avarohana;
  String? chId; //String
  String? status;
  String? namekeyword;
  String? desc;
  String? listenname;
  String? listenid;
  String? listennameEn;
  String? profileImg;
  String? type;
  String? artistId;
  String? profileGuid;
  String? personId;
  String? castType;
  String? castTypeName;
  String? title;
  String? subtitle;
  String? category;
  String? albumTitle;
  String? music;
  String? albumTitleEn;
  String? musicEn;
  String? imageUrl;
  String? datumAlbumId;
  String? albumTitleUtf;
  String? hit;
  String? nameEn;
  String? songTitle;
  String? songUtf;
  String? songId;
  String? actors;
  String? singers;
  String? singersUtf;
  String? musicUtf;
  String? lyricist;
  String? lyricistUtf;
  String? album;
  String? movieUtf;
  String? albumId;
  String? songAlbumId;
  String? rating;
  String? duration;
  String? songKeywords;
  String? media;
  String? cdId;
  String? cdImg;
  String? cdImg50;
  String? origSongId;
  String? m3U8;
  String? labelId;
  String? labelName;
  String? position;
  String? relYear;
  String? votes;
  String? songTitleAlias;
  int? monthlyCount;
  int? songStatus;
  int? upvotes;
  int? downvotes;
  int? hasHls;
  int? enc;
  int? enc32;
  int? yearlyCount;
  String? titlestr;
  String? albumstr;
  String? albumAlias;
  String? raagam;
  int? lifecount;
  String? songTitleNs;
  String? albumid;
  String? songid;
  String? thaala;
  String? thaalam;
  String? actorsUtf;
  String? musicDirUtf;
  String? albumUtf;
  String? albumIdPk;
  String? folderId;
  int? songMonthly;
  String? tagid;

  // String? name;
  // String? id;
  // String? img;
  // String? starttime;
  // String? endtime;
  // String? longdesc;
  // String? arohana;
  // String? avarohana;
  // dynamic chId; //String
  // int? status;
  // String? namekeyword;
  // String? desc;
  // String? listenname;
  // String? listenid;
  // String? listennameEn;
  // String? profileImg;
  // dynamic type;
  // String? artistId;
  // String? profileGuid;
  // int? personId;
  // dynamic castType;
  // dynamic castTypeName;
  // String? title;
  // dynamic subtitle;
  // dynamic category;
  // String? albumTitle;
  // dynamic music;
  // String? albumTitleEn;
  // dynamic musicEn;
  // String? imageUrl;
  // String? datumAlbumId;
  // String? albumTitleUtf;
  // int? hit;
  // String? nameEn;
  // String? songTitle;
  // dynamic songUtf;
  // dynamic songId;
  // String? actors;
  // String? singers;
  // dynamic singersUtf;
  // String? musicUtf;
  // dynamic lyricist;
  // dynamic lyricistUtf;
  // String? album;
  // dynamic movieUtf;
  // String? albumId;
  // String? songAlbumId;
  // String? rating;
  // String? duration;
  // String? songKeywords;
  // String? media;
  // String? cdId;
  // String? cdImg;
  // String? cdImg50;
  // dynamic origSongId;
  // String? m3U8;
  // String? labelId;
  // String? labelName;
  // String? position;
  // int? relYear;
  // String? votes;
  // String? songTitleAlias;
  // int? monthlyCount;
  // int? songStatus;
  // int? upvotes;
  // int? downvotes;
  // int? hasHls;
  // int? enc;
  // int? enc32;
  // int? yearlyCount;
  // String? titlestr;
  // String? albumstr;
  // String? albumAlias;
  // String? raagam;
  // int? lifecount;
  // String? songTitleNs;
  // String? albumid;
  // dynamic songid;
  // String? thaala;
  // String? thaalam;
  // dynamic actorsUtf;
  // String? musicDirUtf;
  // dynamic albumUtf;
  // String? albumIdPk;
  // String? folderId;
  // int? songMonthly;
  // String? tagid;

  // String? name;
  // dynamic id;
  // String? img;
  // String? starttime;
  // String? endtime;
  // String? longdesc;
  // String? arohana;
  // String? avarohana;
  // Lang? chId;
  // int? status;
  // String? namekeyword;
  // String? desc;
  // String? listenname;
  // String? listenid;
  // String? listennameEn;
  // String? profileImg;
  // PurpleType? type;
  // String? artistId;
  // String? profileGuid;
  // int? personId;
  // CastType? castType;
  // CastTypeName? castTypeName;
  // String? title;
  // Subtitle? subtitle;
  // Category? category;
  // String? albumTitle;
  // Lyricist? music;
  // String? albumTitleEn;
  // Lyricist? musicEn;
  // String? imageUrl;
  // String? datumAlbumId;
  // String? albumTitleUtf;
  // int? hit;
  // String? nameEn;
  // String? songTitle;
  // Utf? songUtf;
  // dynamic songId;
  // String? actors;
  // String? singers;
  // Utf? singersUtf;
  // String? musicUtf;
  // Lyricist? lyricist;
  // Utf? lyricistUtf;
  // String? album;
  // Utf? movieUtf;
  // String? albumId;
  // String? songAlbumId;
  // String? rating;
  // String? duration;
  // String? songKeywords;
  // String? media;
  // String? cdId;
  // String? cdImg;
  // String? cdImg50;
  // dynamic origSongId;
  // String? m3U8;
  // String? labelId;
  // String? labelName;
  // String? position;
  // String? relYear;
  // String? votes;
  // String? songTitleAlias;
  // int? monthlyCount;
  // int? songStatus;
  // int? upvotes;
  // int? downvotes;
  // int? hasHls;
  // int? enc;
  // int? enc32;
  // int? yearlyCount;
  // String? titlestr;
  // String? albumstr;
  // String? albumAlias;
  // String? raagam;
  // int? lifecount;
  // String? songTitleNs;
  // String? albumid;
  // String? songid;
  // String? thaala;
  // String? thaalam;
  // Utf? actorsUtf;
  // String? musicDirUtf;
  // Utf? albumUtf;
  // String? albumIdPk;
  // String? folderId;
  // int? songMonthly;
  // String? tagid;

  factory DatumDatum.fromJson(Map<String, dynamic> json) => DatumDatum(
        name: json["name"],
        id: json["id"].toString(),
        img: json["img"],
        starttime: json["starttime"],
        endtime: json["endtime"],
        longdesc: json["longdesc"],
        arohana: json["arohana"],
        avarohana: json["avarohana"],
        // chId: langValues.map[json["chId"]]!,
        chId: json["chId"].toString(),
        status: json["status"].toString(),
        namekeyword: json["namekeyword"],
        desc: json["desc"],
        listenname: json["listenname"],
        listenid: json["listenid"],
        listennameEn: json["listenname_en"],
        profileImg: json["profileImg"],
        // type: purpleTypeValues.map[json["type"]]!,
        type: json["type"].toString(),
        artistId: json["artistId"],
        profileGuid: json["profileGUID"],
        personId: json["personId"].toString(),
        castType: json["castType"].toString(),
        castTypeName: json["castTypeName"].toString(),
        title: json["title"],
        subtitle: json["subtitle"].toString(),
        category: json["category"].toString(),
        albumTitle: json["album_title"],
        music: json["music"].toString(),
        albumTitleEn: json["album_title_en"],
        musicEn: json["music_en"].toString(),
        imageUrl: json["image_url"],
        datumAlbumId: json["album_id"],
        albumTitleUtf: json["album_title_utf"],
        hit: json["hit"].toString(),
        nameEn: json["name_en"],
        songTitle: json["song_title"],
        songUtf: json["song_utf"].toString(),
        songId: json["song_id"].toString(),
        actors: json["actors"],
        singers: json["singers"],
        singersUtf: json["singers_utf"].toString(),
        musicUtf: json["music_utf"],
        lyricist: json["lyricist"].toString(),
        lyricistUtf: json["lyricist_utf"].toString(),
        album: json["album"],
        movieUtf: json["movie_utf"],
        albumId: json["albumId"],
        songAlbumId: json["songAlbumId"],
        rating: json["rating"],
        duration: json["duration"],
        songKeywords: json["songKeywords"],
        media: json["media"],
        cdId: json["Cd_id"],
        cdImg: json["cdImg"],
        cdImg50: json["cdImg50"],
        origSongId: json["origSongId"].toString(),
        m3U8: json["m3u8"],
        labelId: json["labelId"],
        labelName: json["labelName"],
        position: json["position"],
        relYear: json["relYear"].toString(),
        votes: json["votes"],
        songTitleAlias: json["song_title_alias"],
        monthlyCount: json["monthly_count"],
        songStatus: json["song_status"],
        upvotes: json["upvotes"],
        downvotes: json["downvotes"],
        hasHls: json["hasHls"],
        enc: json["enc"],
        enc32: json["enc32"],
        yearlyCount: json["yearly_count"],
        titlestr: json["titlestr"],
        albumstr: json["albumstr"],
        albumAlias: json["album_alias"],
        raagam: json["raagam"],
        lifecount: json["lifecount"],
        songTitleNs: json["song_title_ns"],
        albumid: json["albumid"],
        songid: json["songid"],
        thaala: json["thaala"],
        thaalam: json["thaalam"],
        actorsUtf: json["actors_utf"].toString(),
        musicDirUtf: json["music_dir_utf"],
        albumUtf: json["album_utf"].toString(),
        albumIdPk: json["albumIdPK"],
        folderId: json["folderId"],
        songMonthly: json["song_monthly"],
        tagid: json["tagid"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "img": img,
        "starttime": starttime,
        "endtime": endtime,
        "longdesc": longdesc,
        "arohana": arohana,
        "avarohana": avarohana,
        "chId": langValues.reverse[chId],
        "status": status,
        "namekeyword": namekeyword,
        "desc": desc,
        "listenname": listenname,
        "listenid": listenid,
        "listenname_en": listennameEn,
        "profileImg": profileImg,
        "type": purpleTypeValues.reverse[type],
        "artistId": artistId,
        "profileGUID": profileGuid,
        "personId": personId,
        "castType": castTypeValues.reverse[castType],
        "castTypeName": castTypeNameValues.reverse[castTypeName],
        "title": title,
        "subtitle": subtitleValues.reverse[subtitle],
        "category": categoryValues.reverse[category],
        "album_title": albumTitle,
        "music": lyricistValues.reverse[music],
        "album_title_en": albumTitleEn,
        "music_en": lyricistValues.reverse[musicEn],
        "image_url": imageUrl,
        "album_id": datumAlbumId,
        "album_title_utf": albumTitleUtf,
        "hit": hit,
        "name_en": nameEn,
        "song_title": songTitle,
        "song_utf": utfValues.reverse[songUtf],
        "song_id": songId,
        "actors": actors,
        "singers": singers,
        "singers_utf": utfValues.reverse[singersUtf],
        "music_utf": musicUtf,
        "lyricist": lyricistValues.reverse[lyricist],
        "lyricist_utf": utfValues.reverse[lyricistUtf],
        "album": album,
        "movie_utf": utfValues.reverse[movieUtf],
        "albumId": albumId,
        "songAlbumId": songAlbumId,
        "rating": rating,
        "duration": duration,
        "songKeywords": songKeywords,
        "media": media,
        "Cd_id": cdId,
        "cdImg": cdImg,
        "cdImg50": cdImg50,
        "origSongId": origSongId,
        "m3u8": m3U8,
        "labelId": labelId,
        "labelName": labelName,
        "position": position,
        "relYear": relYear,
        "votes": votes,
        "song_title_alias": songTitleAlias,
        "monthly_count": monthlyCount,
        "song_status": songStatus,
        "upvotes": upvotes,
        "downvotes": downvotes,
        "hasHls": hasHls,
        "enc": enc,
        "enc32": enc32,
        "yearly_count": yearlyCount,
        "titlestr": titlestr,
        "albumstr": albumstr,
        "album_alias": albumAlias,
        "raagam": raagam,
        "lifecount": lifecount,
        "song_title_ns": songTitleNs,
        "albumid": albumid,
        "songid": songid,
        "thaala": thaala,
        "thaalam": thaalam,
        "actors_utf": utfValues.reverse[actorsUtf],
        "music_dir_utf": musicDirUtf,
        "album_utf": utfValues.reverse[albumUtf],
        "albumIdPK": albumIdPk,
        "folderId": folderId,
        "song_monthly": songMonthly,
        "tagid": tagid,
      };
}

enum Utf { EMPTY, NULL }

final utfValues = EnumValues({"": Utf.EMPTY, "NULL": Utf.NULL});

enum CastType { IS, CT, S, IN }

final castTypeValues = EnumValues({"CT": CastType.CT, "IN": CastType.IN, "IS": CastType.IS, "S": CastType.S});

enum CastTypeName { INSTRUMENTS, GENRE, SINGERS }

final castTypeNameValues = EnumValues({"genre": CastTypeName.GENRE, "instruments": CastTypeName.INSTRUMENTS, "singers": CastTypeName.SINGERS});

enum Category { STORIES }

final categoryValues = EnumValues({"stories": Category.STORIES});

enum Lang { HI, ALL }

final langValues = EnumValues({"all": Lang.ALL, "HI": Lang.HI});

enum Lyricist { EMPTY, PRAVIN_GODKHINDI, SRI_VYASARAYARU, NINAD_MULAOKAR, SURDAS }

final lyricistValues = EnumValues({"": Lyricist.EMPTY, "Ninad Mulaokar": Lyricist.NINAD_MULAOKAR, "Pravin Godkhindi": Lyricist.PRAVIN_GODKHINDI, "Sri Vyasarayaru": Lyricist.SRI_VYASARAYARU, "Surdas": Lyricist.SURDAS});

enum Subtitle { SANGEETHA_PRIYOSMI }

final subtitleValues = EnumValues({"Sangeetha Priyosmi": Subtitle.SANGEETHA_PRIYOSMI});

enum PurpleType { MUSTLISTEN, A, VO, IN }

final purpleTypeValues = EnumValues({"A": PurpleType.A, "IN": PurpleType.IN, "mustlisten": PurpleType.MUSTLISTEN, "VO": PurpleType.VO});

enum FluffyType { HI, D, VO }

final fluffyTypeValues = EnumValues({"D": FluffyType.D, "HI": FluffyType.HI, "VO": FluffyType.VO});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
