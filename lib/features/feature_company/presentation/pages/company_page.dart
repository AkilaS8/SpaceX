import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/constants/colors.dart';
import 'package:space_x/features/feature_company/presentation/bloc/company_bloc.dart';
import 'package:space_x/features/feature_company/presentation/widgets/company_loading.dart';
import 'package:space_x/features/feature_company/presentation/widgets/company_widget.dart';
import 'package:space_x/injection_container.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  final bloc = sl<CompanyBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: kBackgroundGradient),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //drawer: Drawer(),
        body: buildBody(),
      ),
    );
  }

  BlocProvider<CompanyBloc> buildBody() {
    return BlocProvider(
      create: (_) => bloc,
      child: BlocBuilder<CompanyBloc, CompanyState>(builder: (context, state) {
        if (state is CompanyInitialState) {
          _dispatchInit(context);
          return CompanyLoadingView();
        } else if (state is CompanyLoadingState) {
          return CompanyLoadingView();
        } else if (state is CompanyLoadedState) {
          return ListView.builder(
              itemCount: state.companyList.length,
              itemBuilder: (context, index) {
                return CompanyBodyWidget(
                  company: state.companyList[index],
                );
              });
          //   CompanyBodyWidget(
          //   company: state.companyList[index],
          // );
        } else if (state is CompanyErrorState) {
          return ErrorWidget(state.errorMessage.toString());
        }
        return ErrorWidget("Unexpected error occurred");
      }),
    );
  }

  void _dispatchInit(context) {
    BlocProvider.of<CompanyBloc>(context)..add(GetCompanyDataListEvent());
  }
}
