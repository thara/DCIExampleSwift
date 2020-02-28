protocol TransferSink {
    func transfer(_ amount: Int, from account: Account) -> Account
}
