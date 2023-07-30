import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) => emit(newPage);

  void setHome() => emit(0);
  void setTransaction() => emit(1);
  void setWallet() => emit(2);
  void setSetting() => emit(3);
}
