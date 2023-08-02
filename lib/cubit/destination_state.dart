import 'package:aeroplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationLoading extends DestinationState {}

class DestinationInitial extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;
  const DestinationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationFailed extends DestinationState {
  final String error;

  const DestinationFailed(this.error);

  @override
  List<Object> get props => [error];
}
