// import 'dart:convert';

// import 'package:chat_app/constant/api_endpoint.dart';
// import 'package:chat_app/models/model.dart';
// import 'package:chat_app/models/weatherdata.dart';
// import 'package:http/http.dart'as http;

// class WeatherRepo {
//   static Future<List<geoData>> getGeoData(String city) async {
//     String url = baseurl + "/geo/1.0/direct?q=${city}&limit=5&appid=" + API_KEY;
//     var res = await http.get(Uri.parse(url));
//     try {
//       List<dynamic> data = jsonDecode(res.body);
//       List<geoData> geoDataList = data.map((item) => geoData.fromJson(item))
//           .toList();
//       print(geoDataList);
//       print(url);
//       return geoDataList;
//     } catch (e) {
//       rethrow;
//     }
//   }


//   static Future<weatherdata> GetWeatherdata(geoData geodata) async {
//     String url = baseurl +
//         "/data/2.5/weather?lat=${geodata.lat}&lon=${geodata.lon}&appid=" +
//         API_KEY;
//     try {
//       var res = await http.get(Uri.parse(url));

//       weatherdata Weather = weatherdata.fromJson(jsonDecode(res.body));


//       return Weather;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   static Future<weatherdata> apicall(String city) async {
//     final List<geoData> geoList = await getGeoData(city);

//     if (geoList.isEmpty) {
//       throw Exception('No geographic data found for the city: $city');
//     }

//     // For simplicity, let's assume we want to use the first geoData object
//     final geoData Geo = geoList.first;

//     // Now fetch weather data using the geoData
//     try {
//       final weatherdata weather = await GetWeatherdata(Geo);
//       return weather;
//     } catch (e) {
//       rethrow;
//     }
//   }
// }

