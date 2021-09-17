import 'package:dartz/dartz.dart';
import 'package:space_x/core/error/failures.dart';
import 'package:space_x/core/usecase/usecase.dart';
import 'package:space_x/features/feature_company/domain/entitites/response/company_data_entity.dart';
import 'package:space_x/features/feature_company/domain/repositories/company_repository.dart';

class GetCompanyUseCase extends UseCase<List<CompanyDataModelEntity>, NoParams> {
  final CompanyRepository repository;

  GetCompanyUseCase({required this.repository});

  @override
  Future<Either<Failure, List<CompanyDataModelEntity>>> call(NoParams params) {
    return repository.getCompanyData();
  }
}