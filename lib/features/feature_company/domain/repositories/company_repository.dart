import 'package:dartz/dartz.dart';
import 'package:space_x/core/error/failures.dart';
import 'package:space_x/features/feature_company/domain/entitites/response/company_data_entity.dart';

abstract class CompanyRepository {
  Future<Either<Failure, List<CompanyDataModelEntity>>> getCompanyData(); //pass entity
}