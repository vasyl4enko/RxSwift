import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

import RxSwift

//: [Next](@next)
/*
example("publishSubject") {
  let disposableBag = DisposeBag()
  
  let subject = PublishSubject<String>()
  
  subject.subscribe({ (event) in
    print("fIrst - ",event)
  }).disposed(by: disposableBag)
  
  subject.on(Event<String>.next("Hello"))
  subject.onNext("swift")
  
  subject.subscribe(onNext: {
    print("second - ",$0)
  }).disposed(by: disposableBag)
  
  subject.onNext("Hi!")
  subject.onNext("gyus")
}


example("BehaviourSubject") {
  let disposableBag = DisposeBag()
  let subject = BehaviorSubject(value: 1)
  
  let firstSubscription = subject.subscribe(onNext: {
    print(#line, $0)
  }).disposed(by: disposableBag)
  
  subject.onNext(2) // [1,2]
  subject.onNext(3) // [1,2,3]
  
  let secondSubscription = subject.subscribe(onNext: {
    print(#line, $0) // [3]
  }).disposed(by: disposableBag)
}


example("ReplaySubject") {
  let disposableBag = DisposeBag()
//  let subject = ReplaySubject<String>.create(bufferSize: 1)
//
//  subject.subscribe{
//    print("First sub --", $0)
//  }.disposed(by: disposableBag)
//
//  subject.onNext("a")
//  subject.onNext("b")
//
//  subject.subscribe{
//    print("Second sub --", $0)
//  }.addDisposableTo(disposableBag)
//
//  subject.onNext("c")
//  subject.onNext("d")
  
  let subject = ReplaySubject<Int>.create(bufferSize: 3)
  
  subject.onNext(1)
  subject.onNext(2)
  subject.onNext(3)
  subject.onNext(4)
  
  subject.subscribe {
    print($0)
  }.disposed(by: disposableBag)
}
*/

example("Variables") {
  let disposableBag = DisposeBag()
  
  let variable = Variable("A")
  variable.asObservable().subscribe(onNext: {
    print($0)
  }).disposed(by: disposableBag)
  
  variable.value = "B"
}
