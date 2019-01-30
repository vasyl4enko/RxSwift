import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

import RxSwift

//: [Next](@next)

example("publishSubject") {
  let disposableBag = DisposeBag()
  
  let subject = PublishSubject<String>()
  
  subject.subscribe({ (event) in
    print(event)
  }).disposed(by: disposableBag)
  
  subject.on(Event<String>.next("Hello"))
}
