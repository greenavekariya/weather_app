 part of 'weather_bloc_bloc.dart';

@immutable
sealed class WeatherBlocState  {
  const WeatherBlocState();

  @override
  List<Object> get prop => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}

final class WeatherBlocFaliure extends WeatherBlocState {}

final class WeatherBlocSuccess extends WeatherBlocState {
  
 final Weather weather;

 WeatherBlocSuccess(this.weather);

 List<Object> get prop => [weather];

}