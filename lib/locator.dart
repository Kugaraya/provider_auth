import 'package:provider_auth/core/models/counter.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator(){
  locator.registerFactory(() => Counter());
}