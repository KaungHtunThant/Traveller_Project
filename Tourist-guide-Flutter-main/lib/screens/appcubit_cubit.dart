import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dataService.dart';
import 'datamodel.dart';

part 'appcubit_state.dart';

class AppcubitCubit extends Cubit<AppcubitState> {
  AppcubitCubit({this.data}) : super(AppcubitInitial()) {
    emit(WelcomeState());
  }
  var placess;
  final DataServices data;
  void getDataa() async {
    try {
      emit(LoadingState());
      placess = await data.getdata();
      emit(LoadedState());
    } catch (e) {}
  }

  // detailPage(DataModel data) {
  //   emit(DetailsState(placess: data));
  // }

  goHome() {
    emit(LoadedState());
  }
}
