@TestOn('dartium')
import "package:test/test.dart";
import 'package:angular2/src/testing/angular2_testing.dart';
import 'package:angular2/angular2.dart';
import 'package:mockito/mockito.dart';
import 'package:angular2/platform/testing/browser.dart';
import 'package:ng2_test_example/app_component.dart';
import 'package:ng2_test_example/my_service.dart';

void main() {
  initAngularTests();

  group('My App', () {
    MyServiceMock _mock = new MyServiceMock();

    setUpProviders(() => [provide(MyService, useValue: _mock)]);

    ngComponentTest('should have title', AppComponent, (ComponentFixture fixture){
      when(_mock.getSome).thenReturn('test');
      var title = fixture.debugElement
          .query(By.css('.title'))
          .nativeElement;
      expect(title.text, 'test');
    });
  });
}

class MyServiceMock extends Mock implements MyService {
}