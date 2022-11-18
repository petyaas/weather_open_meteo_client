///If timezone is set, all timestamps are returned as local-time and data is returned starting at 00:00 local-time.
///Any time zone name from the time zone database [https://en.wikipedia.org/wiki/List_of_tz_database_time_zones]
/// is supported. If auto is set as a time zone, the coordinates will be automatically resolved to the local time zone.
class TimeZone{
  static String _auto="auto";
  static String _america_denver="America/Denver";
  static String _america_anchorage="America/Anchorage";
  static String _america_chicago="America/Chicago";
  static String _america_new_york="America/New_York";
  static String _america_sao_paulo="America/Sao_Paulo";
  static String _europe_london="Europe/London";
  static String _europe_berlin="Europe/Berlin";
  static String _europe_moscow="Europe/Moscow";
  static String _africa_cairo="Africa/Cairo";
  static String _asia_bangkok="Asia/Bangkok";
  static String _asia_tokyo="Asia/Tokyo";
  static String _australia_sydney="Australia/Sydney";
  static String _pacific_auckland="Pacific/Auckland";

  static get auto=>_auto;
  static get america_denver=>_america_denver;
  static get america_anchorage=>_america_anchorage;
  static get america_chicago=>_america_chicago;
  static get america_new_york=>_america_new_york;
  static get america_sao_paulo=>_america_sao_paulo;
  static get europe_london=>_europe_london;
  static get europe_berlin=>_europe_berlin;
  static get europe_moscow=>_europe_moscow;
  static get africa_cairo=>_africa_cairo;
  static get asia_bangkok=>_asia_bangkok;
  static get asia_tokyo=>_asia_tokyo;
  static get australia_sydney=>_australia_sydney;
  static get pacific_auckland=>_pacific_auckland;

}
