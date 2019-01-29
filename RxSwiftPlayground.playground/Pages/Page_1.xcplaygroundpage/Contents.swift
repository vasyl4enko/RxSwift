import PlaygroundSupport

var str = "Hello, playground"

PlaygroundPage.current.needsIndefiniteExecution = true

import RxSwift

example("Test") {
  let intObserver = Observable.just(1)
  let stringObserver = Observable.just("String")
}
