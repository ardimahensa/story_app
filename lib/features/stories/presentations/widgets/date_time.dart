class DateTimeFormat {
  static String formatDateTime(DateTime dateTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);

    if (difference.inDays > 0) {
      // Lebih dari 1 hari, tampilkan dalam format hari
      return '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      // Lebih dari 1 jam, tampilkan dalam format jam
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      // Lebih dari 1 menit, tampilkan dalam format menit
      return '${difference.inMinutes}m';
    } else {
      // Kurang dari 1 menit, tampilkan dalam format detik
      return '${difference.inSeconds}s';
    }
  }
}
