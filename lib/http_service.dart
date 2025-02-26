import 'dart:convert';
import 'package:http/http.dart' as http;
import 'surahayah_model.dart';


class HttpService {
  final String surahURL = "https://quran-api.santrikoding.com/api/surah";

  Future<List<Surah>> getSurahs() async {
    try {
      final response = await http.get(Uri.parse(surahURL));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        List<Surah> surahs = body
            .map(
              (dynamic item) => Surah.fromJson(item as Map<String, dynamic>),
            )
            .toList();
        return surahs;
      } else {
        throw Exception("Unable to retrieve surahs. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching surahs: $e");
    }
  }

   Future<Surah> getAyat(int nomorSurah) async {
    try {
       final String url = "$surahURL/$nomorSurah"; 
    final http.Response res = await http.get(Uri.parse(url));
    
    if(res.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(res.body);
      return Surah.fromJson(body);
    }else {
      throw Exception("Unable to retrieve Ayat. Status code: ${res.statusCode}");
    }
   }catch (e) {
    throw Exception("Error Fetching Ayat: $e");
   }
  }
   
}