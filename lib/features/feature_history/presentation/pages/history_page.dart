import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/constants/colors.dart';
import 'package:space_x/core/loadings/rockets_loading_view.dart';
import 'package:space_x/features/feature_history/presentation/bloc/history_bloc.dart';
import 'package:space_x/features/feature_history/presentation/widgets/history_list_title.dart';
// import 'package:space_x/features/feature_history/presentation/widgets/history_loading.dart';

import '../../../../injection_container.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final bloc = sl<HistoryBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: kBackgroundGradient,
        ),
      ),
      child: buildBody(),
    );
  }

  BlocProvider<HistoryBloc> buildBody() {
    return BlocProvider(
      create: (_) => bloc,
      child: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryInitialState) {
            _dispatchInit(context);
            return RocketsLoadingView();
          } else if (state is HistoryLoadingState) {
            return RocketsLoadingView();
          } else if (state is HistoryLoadedState) {
            return ListView.builder(
              itemCount: state.historyList.length,
              itemBuilder: (context, index) {
                return HistoryListTile(history: state.historyList[index]);
              },
            );
          } else if (state is HistoryErrorState) {
            return ErrorWidget(state.errorMessage.toString());
          }
          return ErrorWidget("Unexpected error occur");
        },
      ),
    );
  }

  void _dispatchInit(context) {
    BlocProvider.of<HistoryBloc>(context)..add(GetHistoryDataListEvent());
  }
}
