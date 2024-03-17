import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

extension DateTimeExtention on DateTime {
  toIndTime() {
    initializeDateFormatting('id_ID');
    return DateFormat('dd MMMM yyyy', 'id_ID').format(this);
  }
}
