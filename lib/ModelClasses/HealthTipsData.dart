

class HealthTipsData{
  final String newsTitle;
  final String newsBanner;
  final String newsDescription;
  final Time time;

  HealthTipsData({
    required this.newsTitle,
    required this.newsBanner,
    required this.newsDescription,
    required this.time,
  });

}

class Time{
  final String timeInHours;

  Time({
    required this.timeInHours,
  });

}