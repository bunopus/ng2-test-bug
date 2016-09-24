// Copyright (c) 2016, Evgeny Gusev. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:ng2_test_example/my_service.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html')
class AppComponent {
  MyService _service;

  AppComponent(this._service);

  String getSomeFormService() => _service.getSome();
}
