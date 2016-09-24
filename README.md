### This is a test repository to reproduce bug with angular2 testing

**Bug**: function *ngComponentTest* from *'package:angular2/src/testing/angular2_testing.dart'* doesnt work if test component (second parameter) have some injected services.
**Steps to reproduce**: 
```bash
pub get 
pub serve

#run tests from another console
pub run test --pub-serve=8181 -p dartium
```
**Stack**:
```bash
  EXCEPTION: Error in :0:0
  ORIGINAL EXCEPTION: No provider for MyService!
  ORIGINAL STACKTRACE:
  #0      ReflectiveInjector_._throwOrNull (package:angular2/src/core/di/reflective_injector.dart:778:7)
  #1      ReflectiveInjector_._getByKeyDefault (package:angular2/src/core/di/reflective_injector.dart:806:19)
  #2      ReflectiveInjector_._getByKey (package:angular2/src/core/di/reflective_injector.dart:770:14)
  #3      ReflectiveInjector_.get (package:angular2/src/core/di/reflective_injector.dart:528:17)
  #4      _LocalInstanceMirror._invoke (dart:mirrors-patch/mirrors_impl.dart:534)
  #5      _LocalInstanceMirror.invoke (dart:mirrors-patch/mirrors_impl.dart:530)
  #6      ReflectionCapabilities.method.<anonymous closure> (package:angular2/src/core/reflection/reflection_capabilities.dart:302:27)
  #7      StatementInterpreter.visitInvokeMethodExpr (package:angular2/src/compiler/output/output_interpreter.dart:294:43)
  #8      InvokeMethodExpr.visitExpression (package:angular2/src/compiler/output/output_ast.dart:322:20)
  #9      StatementInterpreter.visitAllExpressions.<anonymous closure> (package:angular2/src/compiler/output/output_interpreter.dart:534:43)
  #10     MappedListIterable.elementAt (dart:_internal/iterable.dart:416)
  #11     ListIterable.toList (dart:_internal/iterable.dart:222)
  #12     StatementInterpreter.visitAllExpressions (package:angular2/src/compiler/output/output_interpreter.dart:534:71)
  #13     StatementInterpreter.visitInstantiateExpr (package:angular2/src/compiler/output/output_interpreter.dart:388:21)
  #14     InstantiateExpr.visitExpression (package:angular2/src/compiler/output/output_ast.dart:355:20)
  #15     StatementInterpreter.visitWritePropExpr (package:angular2/src/compiler/output/output_interpreter.dart:227:28)
  #16     WritePropExpr.visitExpression (package:angular2/src/compiler/output/output_ast.dart:296:20)
  #17     StatementInterpreter.visitExpressionStmt (package:angular2/src/compiler/output/output_interpreter.dart:351:22)
  #18     ExpressionStatement.visitStatement (package:angular2/src/compiler/output/output_ast.dart:599:20)
  #19     StatementInterpreter.visitAllStatements (package:angular2/src/compiler/output/output_interpreter.dart:542:22)
  #20     _executeFunctionStatements (package:angular2/src/compiler/output/output_interpreter.dart:55:24)
  #21     _declareFn.<anonymous closure> (package:angular2/src/compiler/output/output_interpreter.dart:559:11)
  #22     _InterpretiveAppView.createInternal (package:angular2/src/compiler/output/interpretive_view.dart:54:15)
  #23     AppView.create (package:angular2/src/core/linker/app_view.dart:135:17)
  #24     DebugAppView.create (package:angular2/src/debug/debug_app_view.dart:49:26)
  #25     ComponentFactory.create (package:angular2/src/core/linker/component_factory.dart:108:32)
  #26     DynamicComponentLoader_.loadAsRoot.<anonymous closure> (package:angular2/src/core/linker/dynamic_component_loader.dart:118:43)
  #27     StackZoneSpecification.registerUnaryCallback.<anonymous closure>.<anonymous closure> (package:stack_trace/src/stack_zone_specification.dart:135:26)
  #28     StackZoneSpecification._run (package:stack_trace/src/stack_zone_specification.dart:206:15)
  #29     StackZoneSpecification.registerUnaryCallback.<anonymous closure> (package:stack_trace/src/stack_zone_specification.dart:135:14)
  #30     _rootRunUnary (dart:async/zone.dart:1158)
  #31     _CustomZone.runUnary (dart:async/zone.dart:1037)
  #32     _FutureListener.handleValue (dart:async/future_impl.dart:131)
  #33     _Future._propagateToListeners.handleValueCallback (dart:async/future_impl.dart:637)
  #34     _Future._propagateToListeners (dart:async/future_impl.dart:667)
  #35     _Future._completeWithValue (dart:async/future_impl.dart:477)
  #36     Future.wait.<anonymous closure> (dart:async/future.dart:299)
  #37     StackZoneSpecification.registerUnaryCallback.<anonymous closure>.<anonymous closure> (package:stack_trace/src/stack_zone_specification.dart:135:26)
  #38     StackZoneSpecification._run (package:stack_trace/src/stack_zone_specification.dart:206:15)
  #39     StackZoneSpecification.registerUnaryCallback.<anonymous closure> (package:stack_trace/src/stack_zone_specification.dart:135:14)
  #40     _rootRunUnary (dart:async/zone.dart:1158)
  #41     _CustomZone.runUnary (dart:async/zone.dart:1037)
  #42     _FutureListener.handleValue (dart:async/future_impl.dart:131)
  #43     _Future._propagateToListeners.handleValueCallback (dart:async/future_impl.dart:637)
  #44     _Future._propagateToListeners (dart:async/future_impl.dart:667)
  #45     _Future._completeWithValue (dart:async/future_impl.dart:477)
  #46     _Future._asyncComplete.<anonymous closure> (dart:async/future_impl.dart:528)
  #47     StackZoneSpecification._run (package:stack_trace/src/stack_zone_specification.dart:206:15)
  #48     StackZoneSpecification.registerCallback.<anonymous closure> (package:stack_trace/src/stack_zone_specification.dart:125:48)
  #49     _rootRun (dart:async/zone.dart:1150)
  #50     _CustomZone.run (dart:async/zone.dart:1026)
  #51     _CustomZone.runGuarded (dart:async/zone.dart:924)
  #52     _CustomZone.bindCallback.<anonymous closure> (dart:async/zone.dart:951)
  #53     _microtaskLoop (dart:async/schedule_microtask.dart:41)
  #54     _startMicrotaskLoop (dart:async/schedule_microtask.dart:50)
  #55     _ScheduleImmediateHelper._handleMutation (dart:html:49308)
  
  ERROR CONTEXT:
  Instance of 'DebugContext'
  package:angular2/src/debug/debug_app_view.dart 140:9                   DebugAppView._rethrowWithContext
  package:angular2/src/debug/debug_app_view.dart 51:12                   DebugAppView.create
  package:angular2/src/core/linker/component_factory.dart 108:32         ComponentFactory.create
  package:angular2/src/core/linker/dynamic_component_loader.dart 118:43  DynamicComponentLoader_.loadAsRoot.<fn>
  ===== asynchronous gap ===========================
  dart:async                                                             _Future.then
  package:angular2/src/core/linker/dynamic_component_loader.dart 117:50  DynamicComponentLoader_.loadAsRoot
  package:angular2/src/testing/test_component_builder.dart 190:16        TestComponentBuilder.createAsync
  package:angular2/src/testing/angular2_testing.dart 193:20              ngComponentTest.<fn>.<fn>
  dart:core                                                              Function.apply
  package:angular2/src/testing/internal_injector.dart 84:21              FunctionWithParamTokens.execute
  package:angular2/src/testing/internal_injector.dart 55:15              TestInjector.execute
  package:angular2/src/testing/internal.dart 54:17                       inject.<async>
  ===== asynchronous gap ===========================
  dart:async                                                             Future.Future.microtask
  package:angular2/src/testing/internal.dart                             inject
  package:angular2/src/testing/angular2_testing.dart 163:12              ngComponentTest.<fn>
  
00:03 +0 -1: Some tests failed.                                                                    
```
