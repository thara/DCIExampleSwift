protocol TransferSource {
    func transfer(_ amount: Int, to account: Account) -> (Account, Account)
}
