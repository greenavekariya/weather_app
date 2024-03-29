import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';
part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<Fetchweather>((event, emit) async{
      emit(WeatherBlocLoading());
      
      try {
        WeatherFactory wf = WeatherFactory("API_KEY",language: Language.ENGLISH); 
        Position position = await Geolocator.getCurrentPosition();
        if(Permissions == LocationPermission.denied){
          
        }
       Weather weather = await wf.currentWeatherByLocation(
           position.latitude,
            position.longitude,
           );
           print("weather========${weather}");
       emit(WeatherBlocSuccess(weather));
      } catch (e) {
        emit(WeatherBlocFaliure());
      }
    });
  }
}
