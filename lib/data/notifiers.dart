// ValueNotifies : hold the data
// ValueListenableBuilder: Listen to the data (don't need setState)

import 'package:flutter/cupertino.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);