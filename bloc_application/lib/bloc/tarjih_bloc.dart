import 'package:flutter_bloc/flutter_bloc.dart';

part 'tarjih_event.dart';
part 'tarjih_state.dart';

class TarjihBloc extends Bloc<TarjihEvent, TarjihState> {
  TarjihBloc() : super(LoaingState()) {
    on<GetData>((event, emit) async {
   //   bool result = false;
        emit.call((LoaingState()));
        await Future.delayed(Duration(seconds: 6));
        emit.call((SuccessState()));
      // if (result == false) {
      //   emit.call((ErrorState()));
      // } else {
      //   emit.call((SuccessState()));
      // }
    });
  }
}
