// Copyright (c) 2016, Evgeny Gusev. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser.dart';

import 'package:ng2_test_example/app_component.dart';
import 'package:ng2_test_example/my_service.dart';

main() {
  bootstrap(AppComponent, [MyService]);
}
