import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'list_order_state.dart';

class ListOrderCubit extends Cubit<ListOrderState> {
  ListOrderCubit() : super(ListOrderInitial());
}
