class DragonDataModelDiameter {
  double? meters;

  DragonDataModelDiameter({
    this.meters,
  });
  DragonDataModelDiameter.fromJson(Map<String, dynamic> json) {
    meters = json["meters"]?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["meters"] = meters;
    return data;
  }
}

class DragonDataModelHeightWTrunk {

  double? meters;

  DragonDataModelHeightWTrunk({
    this.meters,
  });
  DragonDataModelHeightWTrunk.fromJson(Map<String, dynamic> json) {
    meters = json["meters"]?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["meters"] = meters;
    return data;
  }
}

class DragonDataModelTrunkCargo {

  int? solarArray;
  bool? unpressurizedCargo;

  DragonDataModelTrunkCargo({
    this.solarArray,
    this.unpressurizedCargo,
  });
  DragonDataModelTrunkCargo.fromJson(Map<String, dynamic> json) {
    solarArray = json["solar_array"]?.toInt();
    unpressurizedCargo = json["unpressurized_cargo"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["solar_array"] = solarArray;
    data["unpressurized_cargo"] = unpressurizedCargo;
    return data;
  }
}

class DragonDataModelTrunkTrunkVolume {

  int? cubicMeters;

  DragonDataModelTrunkTrunkVolume({
    this.cubicMeters,
  });
  DragonDataModelTrunkTrunkVolume.fromJson(Map<String, dynamic> json) {
    cubicMeters = json["cubic_meters"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["cubic_meters"] = cubicMeters;
    return data;
  }
}

class DragonDataModelTrunk {

  DragonDataModelTrunkTrunkVolume? trunkVolume;
  DragonDataModelTrunkCargo? cargo;

  DragonDataModelTrunk({
    this.trunkVolume,
    this.cargo,
  });
  DragonDataModelTrunk.fromJson(Map<String, dynamic> json) {
    trunkVolume = (json["trunk_volume"] != null) ? DragonDataModelTrunkTrunkVolume.fromJson(json["trunk_volume"]) : null;
    cargo = (json["cargo"] != null) ? DragonDataModelTrunkCargo.fromJson(json["cargo"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (trunkVolume != null) {
      data["trunk_volume"] = trunkVolume!.toJson();
    }
    if (cargo != null) {
      data["cargo"] = cargo!.toJson();
    }
    return data;
  }
}

class DragonDataModelPressurizedCapsulePayloadVolume {

  int? cubicMeters;

  DragonDataModelPressurizedCapsulePayloadVolume({
    this.cubicMeters,
  });
  DragonDataModelPressurizedCapsulePayloadVolume.fromJson(Map<String, dynamic> json) {
    cubicMeters = json["cubic_meters"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["cubic_meters"] = cubicMeters;
    return data;
  }
}

class DragonDataModelPressurizedCapsule {

  DragonDataModelPressurizedCapsulePayloadVolume? payloadVolume;

  DragonDataModelPressurizedCapsule({
    this.payloadVolume,
  });
  DragonDataModelPressurizedCapsule.fromJson(Map<String, dynamic> json) {
    payloadVolume = (json["payload_volume"] != null) ? DragonDataModelPressurizedCapsulePayloadVolume.fromJson(json["payload_volume"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (payloadVolume != null) {
      data["payload_volume"] = payloadVolume!.toJson();
    }
    return data;
  }
}

class DragonDataModelReturnPayloadVol {

  int? cubicMeters;

  DragonDataModelReturnPayloadVol({
    this.cubicMeters,
  });
  DragonDataModelReturnPayloadVol.fromJson(Map<String, dynamic> json) {
    cubicMeters = json["cubic_meters"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["cubic_meters"] = cubicMeters;
    return data;
  }
}

class DragonDataModelReturnPayloadMass {

  int? kg;

  DragonDataModelReturnPayloadMass({
    this.kg,
  });
  DragonDataModelReturnPayloadMass.fromJson(Map<String, dynamic> json) {
    kg = json["kg"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["kg"] = kg;
    return data;
  }
}

class DragonDataModelLaunchPayloadVol {

  int? cubicMeters;

  DragonDataModelLaunchPayloadVol({
    this.cubicMeters,
  });
  DragonDataModelLaunchPayloadVol.fromJson(Map<String, dynamic> json) {
    cubicMeters = json["cubic_meters"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["cubic_meters"] = cubicMeters;
    return data;
  }
}

class DragonDataModelLaunchPayloadMass {

  int? kg;

  DragonDataModelLaunchPayloadMass({
    this.kg,
  });
  DragonDataModelLaunchPayloadMass.fromJson(Map<String, dynamic> json) {
    kg = json["kg"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["kg"] = kg;
    return data;
  }
}

class DragonDataModelHeatShield {

  String? material;
  double? sizeMeters;
  int? tempDegrees;

  DragonDataModelHeatShield({
    this.material,
    this.sizeMeters,
    this.tempDegrees,
  });
  DragonDataModelHeatShield.fromJson(Map<String, dynamic> json) {
    material = json["material"]?.toString();
    sizeMeters = json["size_meters"]?.toDouble();
    tempDegrees = json["temp_degrees"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["material"] = material;
    data["size_meters"] = sizeMeters;
    data["temp_degrees"] = tempDegrees;
    return data;
  }
}

class DragonDataModel {

  String? id;
  String? name;
  String? type;
  bool? active;
  int? crewCapacity;
  int? dryMassKg;
  String? firstFlight;
  DragonDataModelHeatShield? heatShield;
  DragonDataModelLaunchPayloadMass? launchPayloadMass;
  DragonDataModelLaunchPayloadVol? launchPayloadVol;
  DragonDataModelReturnPayloadMass? returnPayloadMass;
  DragonDataModelReturnPayloadVol? returnPayloadVol;
  DragonDataModelPressurizedCapsule? pressurizedCapsule;
  DragonDataModelTrunk? trunk;
  DragonDataModelHeightWTrunk? heightWTrunk;
  DragonDataModelDiameter? diameter;
  List<String?>? flickrImages;
  String? wikipedia;
  String? description;

  DragonDataModel({
    this.id,
    this.name,
    this.type,
    this.active,
    this.crewCapacity,
    this.dryMassKg,
    this.firstFlight,
    this.heatShield,
    this.launchPayloadMass,
    this.launchPayloadVol,
    this.returnPayloadMass,
    this.returnPayloadVol,
    this.pressurizedCapsule,
    this.trunk,
    this.heightWTrunk,
    this.diameter,
    this.flickrImages,
    this.wikipedia,
    this.description,
  });
  DragonDataModel.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toString();
    name = json["name"]?.toString();
    type = json["type"]?.toString();
    active = json["active"];
    crewCapacity = json["crew_capacity"]?.toInt();
    dryMassKg = json["dry_mass_kg"]?.toInt();
    firstFlight = json["first_flight"]?.toString();
    heatShield = (json["heat_shield"] != null) ? DragonDataModelHeatShield.fromJson(json["heat_shield"]) : null;
    launchPayloadMass = (json["launch_payload_mass"] != null) ? DragonDataModelLaunchPayloadMass.fromJson(json["launch_payload_mass"]) : null;
    launchPayloadVol = (json["launch_payload_vol"] != null) ? DragonDataModelLaunchPayloadVol.fromJson(json["launch_payload_vol"]) : null;
    returnPayloadMass = (json["return_payload_mass"] != null) ? DragonDataModelReturnPayloadMass.fromJson(json["return_payload_mass"]) : null;
    returnPayloadVol = (json["return_payload_vol"] != null) ? DragonDataModelReturnPayloadVol.fromJson(json["return_payload_vol"]) : null;
    pressurizedCapsule = (json["pressurized_capsule"] != null) ? DragonDataModelPressurizedCapsule.fromJson(json["pressurized_capsule"]) : null;
    trunk = (json["trunk"] != null) ? DragonDataModelTrunk.fromJson(json["trunk"]) : null;
    heightWTrunk = (json["height_w_trunk"] != null) ? DragonDataModelHeightWTrunk.fromJson(json["height_w_trunk"]) : null;
    diameter = (json["diameter"] != null) ? DragonDataModelDiameter.fromJson(json["diameter"]) : null;
    if (json["flickr_images"] != null) {
      final v = json["flickr_images"];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      flickrImages = arr0;
    }
    wikipedia = json["wikipedia"]?.toString();
    description = json["description"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["name"] = name;
    data["type"] = type;
    data["active"] = active;
    data["crew_capacity"] = crewCapacity;
    data["dry_mass_kg"] = dryMassKg;
    data["first_flight"] = firstFlight;
    if (heatShield != null) {
      data["heat_shield"] = heatShield!.toJson();
    }
    if (launchPayloadMass != null) {
      data["launch_payload_mass"] = launchPayloadMass!.toJson();
    }
    if (launchPayloadVol != null) {
      data["launch_payload_vol"] = launchPayloadVol!.toJson();
    }
    if (returnPayloadMass != null) {
      data["return_payload_mass"] = returnPayloadMass!.toJson();
    }
    if (returnPayloadVol != null) {
      data["return_payload_vol"] = returnPayloadVol!.toJson();
    }
    if (pressurizedCapsule != null) {
      data["pressurized_capsule"] = pressurizedCapsule!.toJson();
    }
    if (trunk != null) {
      data["trunk"] = trunk!.toJson();
    }
    if (heightWTrunk != null) {
      data["height_w_trunk"] = heightWTrunk!.toJson();
    }
    if (diameter != null) {
      data["diameter"] = diameter!.toJson();
    }
    if (flickrImages != null) {
      final v = flickrImages;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data["flickr_images"] = arr0;
    }
    data["wikipedia"] = wikipedia;
    data["description"] = description;
    return data;
  }
}
