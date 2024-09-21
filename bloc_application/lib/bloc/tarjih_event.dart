part of 'tarjih_bloc.dart';

abstract class TarjihEvent {}

class GetData extends TarjihEvent {
  late int id;
  GetData(int id) {
    this.id = id;
  }
}

class ApplyFilter extends TarjihEvent {}
