let source0 = Account(availableBalance: 0)
let sink0 = Account(availableBalance: 0)
let source1 = source0.increase(balance: 100000)

let (source2, sink1) = source1.transfer(200, to: sink0)
print("\(source2) \(sink1)")
