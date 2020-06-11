import 'package:flutter_marvel/features/list_characters/presentation/states/home_page_state.dart';
import 'package:flutter_marvel/features/list_characters/presentation/viewmodels/HomePageViewModel.dart';

class HomePageBloc {
  final Stream<HomePageState> stateList;

  HomePageBloc._(this.stateList);

  factory HomePageBloc(HomePageViewModel viewModel) {
    final state = _list(viewModel);
    return HomePageBloc._(state);
  }

  static Stream<HomePageState> _list(HomePageViewModel viewModel) async* {
    yield HomePageLoading();
    try {
      await viewModel.list();
      yield HomePagePopulated(viewModel.listCharacter);
    } catch (e) {
      yield HomePageError();
    }
  }
}
