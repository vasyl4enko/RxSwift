import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

import RxSwift
/*
example("Test") {
  let intObserver = Observable.just(1)
  let stringObserver = Observable.just("String")
}
*/

/*
example("just") {
  // Observable
  let observable =  Observable.just("Hello, Rx")

  // Observer
  observable.subscribe({ (event) in
    print(event)
  })
}
*/

/*
example("of") {
  let observable = Observable.of(1,2,3,4,5)

  observable.subscribe({ (event) in
    print(event)
  })

  observable.subscribe {
    print($0)
  }
}
*/

/*
example("create") {
  let items = [1, 2, 3, 4, 5]
  
  Observable.from(items).subscribe(onNext: { (event) in
    print(event)
  }, onError: { (error) in
    print("error")
  }, onCompleted: {
    print("Ok")
  }, onDisposed: {
    print("Disposed")
  })
}
*/

/*
example("Disposable") {
  let seq = [1, 2, 3, 4, 5]
  
  Observable.from(seq).subscribe({ (event) in
    print(event)
  })
  
  Disposables.create()
}



example("dispose") {
  let seq = [1,2,3]
  let subscription = Observable.from(seq)
  subscription.subscribe({ (event) in
    print(event)
  }).dispose()
}

example("disposeBag") {
  let disposeBag =  DisposeBag()
  let seq = [1,2,3]
  let sub = Observable.from(seq)
  sub.subscribe({ (event) in
    print(event)
  }).disposed(by: disposeBag)
}

example("takeUntil") {
  let stopSeq = Observable.just(1).delaySubscription(2, scheduler: MainScheduler.instance)
  let seq = Observable.from([1,2,3]).takeUntil(stopSeq)
  
  seq.subscribe({ (event) in
    print(event)
  })
}

example("filter") {
  let seq = Observable.of(1,2,20,2, 32, 3 ,40).filter{$0 > 10}
  
  seq.subscribe({ (event) in
    print(event)
  })
}


example("map") {
  let seq = Observable.of(1,2,3).map{ $0 * 10 }
  
  seq.subscribe({ (event) in
    print(event)
  })
}
*/

example("merge") {
  let firstSeq = Observable.of(1,2,3)
  
  let secondSeq = Observable.of(4, 5, 6)
  
  let bothSeq =  Observable.of(firstSeq, secondSeq)
  
  let merge =  bothSeq.merge()
  
  merge.subscribe({ (event) in
    print(event)
  })
}
