class NextLunchLinks {


  String? missionPatch;
  String? missionPatchSmall;
  String? redditCampaign;

  NextLunchLinks({
    this.missionPatch,
    this.missionPatchSmall,
    this.redditCampaign,
  });
  NextLunchLinks.fromJson(Map<String, dynamic> json) {
    missionPatch = json["mission_patch"]?.toString();
    missionPatchSmall = json["mission_patch_small"]?.toString();
    redditCampaign = json["reddit_campaign"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["mission_patch"] = missionPatch;
    data["mission_patch_small"] = missionPatchSmall;
    data["reddit_campaign"] = redditCampaign;
    return data;
  }
}

class NextLunchLaunchSite {


  String? siteId;
  String? siteName;
  String? siteNameLong;

  NextLunchLaunchSite({
    this.siteId,
    this.siteName,
    this.siteNameLong,
  });
  NextLunchLaunchSite.fromJson(Map<String, dynamic> json) {
    siteId = json["site_id"]?.toString();
    siteName = json["site_name"]?.toString();
    siteNameLong = json["site_name_long"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["site_id"] = siteId;
    data["site_name"] = siteName;
    data["site_name_long"] = siteNameLong;
    return data;
  }
}

class NextLunchRocketSecondStagePayloadsOrbitParams {


  String? referenceSystem;
  String? regime;

  NextLunchRocketSecondStagePayloadsOrbitParams({
    this.referenceSystem,
    this.regime,
  });
  NextLunchRocketSecondStagePayloadsOrbitParams.fromJson(Map<String, dynamic> json) {
    referenceSystem = json["reference_system"]?.toString();
    regime = json["regime"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["reference_system"] = referenceSystem;
    data["regime"] = regime;
    return data;
  }
}

class NextLunchRocketSecondStagePayloads {

  String? payloadId;
  String? capSerial;
  bool? reused;
  List<String?>? customers;
  String? nationality;
  String? manufacturer;
  String? payloadType;
  String? orbit;
  NextLunchRocketSecondStagePayloadsOrbitParams? orbitParams;

  NextLunchRocketSecondStagePayloads({
    this.payloadId,
    this.capSerial,
    this.reused,
    this.customers,
    this.nationality,
    this.manufacturer,
    this.payloadType,
    this.orbit,
    this.orbitParams,
  });
  NextLunchRocketSecondStagePayloads.fromJson(Map<String, dynamic> json) {
    payloadId = json["payload_id"]?.toString();
    capSerial = json["cap_serial"]?.toString();
    reused = json["reused"];
    if (json["customers"] != null) {
      final v = json["customers"];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      customers = arr0;
    }
    nationality = json["nationality"]?.toString();
    manufacturer = json["manufacturer"]?.toString();
    payloadType = json["payload_type"]?.toString();
    orbit = json["orbit"]?.toString();
    orbitParams = (json["orbit_params"] != null) ? NextLunchRocketSecondStagePayloadsOrbitParams.fromJson(json["orbit_params"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["payload_id"] = payloadId;
    data["cap_serial"] = capSerial;
    data["reused"] = reused;
    if (customers != null) {
      final v = customers;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data["customers"] = arr0;
    }
    data["nationality"] = nationality;
    data["manufacturer"] = manufacturer;
    data["payload_type"] = payloadType;
    data["orbit"] = orbit;
    if (orbitParams != null) {
      data["orbit_params"] = orbitParams!.toJson();
    }
    return data;
  }
}

class NextLunchRocketSecondStage {


  int? block;
  List<NextLunchRocketSecondStagePayloads?>? payloads;

  NextLunchRocketSecondStage({
    this.block,
    this.payloads,
  });
  NextLunchRocketSecondStage.fromJson(Map<String, dynamic> json) {
    block = json["block"]?.toInt();
    if (json["payloads"] != null) {
      final v = json["payloads"];
      final arr0 = <NextLunchRocketSecondStagePayloads>[];
      v.forEach((v) {
        arr0.add(NextLunchRocketSecondStagePayloads.fromJson(v));
      });
      payloads = arr0;
    }
  }
}

class NextLunchRocketFirstStageCores {


  String? coreSerial;
  int? flight;
  int? block;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingIntent;
  String? landingType;

  NextLunchRocketFirstStageCores({
    this.coreSerial,
    this.flight,
    this.block,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingIntent,
    this.landingType,
  });
}

class NextLunchRocketFirstStage {


  List<NextLunchRocketFirstStageCores?>? cores;

  NextLunchRocketFirstStage({
    this.cores,
  });
}

class NextLunchRocket {


  String? rocketId;
  String? rocketName;
  NextLunchRocketFirstStage? firstStage;
  NextLunchRocketSecondStage? secondStage;

  NextLunchRocket({
    this.rocketId,
    this.rocketName,
    this.firstStage,
    this.secondStage,
  });
}

class NextLunch {


  int? flightNumber;
  String? missionName;
  List<String?>? missionId;
  String? launchYear;
  int? launchDateUnix;
  String? launchDateUtc;
  String? launchDateLocal;
  bool? tbd;
  NextLunchRocket? rocket;
  NextLunchLaunchSite? launchSite;
  NextLunchLinks? links;
  String? details;
  bool? upcoming;
  String? lastDateUpdate;
  String? lastWikiLaunchDate;
  String? lastWikiRevision;
  String? lastWikiUpdate;
  String? launchDateSource;

  NextLunch({
    this.flightNumber,
    this.missionName,
    this.missionId,
    this.launchYear,
    this.launchDateUnix,
    this.launchDateUtc,
    this.launchDateLocal,
    this.tbd,
    this.rocket,
    this.launchSite,
    this.links,
    this.details,
    this.upcoming,
    this.lastDateUpdate,
    this.lastWikiLaunchDate,
    this.lastWikiRevision,
    this.lastWikiUpdate,
    this.launchDateSource,
  });
}