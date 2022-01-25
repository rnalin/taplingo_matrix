part of 'curiosity_bloc.dart';

abstract class CuriosityState extends Equatable {
  const CuriosityState();
  
  @override
  List<Object> get props => [];
}

class CuriosityInitial extends CuriosityState {}
