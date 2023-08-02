import 'package:aeroplane/cubit/destination_state.dart';
import 'package:aeroplane/models/destination_model.dart';
import 'package:aeroplane/services/destination_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetch() async {
    try {
      emit(DestinationLoading());
      List<DestinationModel> destinations = await DsetinationSErvice().fetch();
      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
