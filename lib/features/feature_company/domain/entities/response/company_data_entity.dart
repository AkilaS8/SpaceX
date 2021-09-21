class CompanyDataModelHeadquartersEntity {
  String? address;
  String? city;
  String? state;

  CompanyDataModelHeadquartersEntity({
    this.address,
    this.city,
    this.state,
  });
}

class CompanyDataModelEntity {
  String? name;
  String? founder;
  int? founded;
  int? employees;
  int? vehicles;
  int? launchSites;
  int? testSites;
  String? ceo;
  String? cto;
  String? coo;
  String? ctoPropulsion;
  int? valuation;
  CompanyDataModelHeadquartersEntity? headquarters;
  String? summary;

  CompanyDataModelEntity({
    this.name,
    this.founder,
    this.founded,
    this.employees,
    this.vehicles,
    this.launchSites,
    this.testSites,
    this.ceo,
    this.cto,
    this.coo,
    this.ctoPropulsion,
    this.valuation,
    this.headquarters,
    this.summary,
  });
}
