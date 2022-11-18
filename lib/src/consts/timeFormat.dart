///If format unixtime is selected, all time values are returned in UNIX epoch time in seconds. Please note that all timestamp are in GMT+0! For daily values with unix timestamps, please apply utc_offset_seconds again to get the correct date.
class TimeFormat{
  static String _iso8601='iso8601';
  static String _unixtime='unixtime';
  static String _utc_offset_seconds='utc_offset_seconds';

  static get iso8601=>_iso8601;
  static get unixtime=>_unixtime;
  static get utc_offset_seconds=>_utc_offset_seconds;
}
