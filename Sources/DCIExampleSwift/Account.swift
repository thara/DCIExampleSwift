import Foundation

struct Account {
    var availableBalance: Int

    func increase(balance: Int) -> Account {
        Account(availableBalance: availableBalance + balance)
    }

    func decrease(balance: Int) -> Account {
        Account(availableBalance: availableBalance - balance)
    }
}

extension Account: TransferSink {
    func transfer(_ amount: Int, from _: Account) -> Account {
        let result = increase(balance: amount)
        print("Account: Transfer in \(Date()) \(amount)")
        return result
    }
}

extension Account: TransferSource {
    func transfer(_ amount: Int, to account: Account) -> (Account, Account) {
        let newSource = decrease(balance: amount)
        print("Account: Transfer out \(Date()) \(amount)")
        let result = account.transfer(amount, from: self)
        return (newSource, result)
    }
}
