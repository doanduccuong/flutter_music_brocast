extension ConvertToDateTime on int {
  DateTime parseTimeStamp() {
    return DateTime.fromMicrosecondsSinceEpoch(this);
  }
}
