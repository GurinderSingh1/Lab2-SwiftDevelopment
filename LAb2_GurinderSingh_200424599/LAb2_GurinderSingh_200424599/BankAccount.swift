//References: IOS How to Develop by Deitel and Deitel
// Access modifiers can be public, internal or private
public class BankAccount {

public var accountName: String = "" // stored properties must be initialized
public var customerName: String = "" // stored properties must be initialized
    public private(set) var accountBalance: Double = 10;
    public private(set) var yearlyInterest: Float = 0.1;
    
    
// initializer also known as constructors
// Can be overloaded
    public init(accountName: String, customerName: String, accountBalance: Double, yearlyInterest: Float) {
    self.accountName = accountName
    self.customerName = customerName;
        
    // validate that balance is greater than 0.0; if not,
    // property balance keeps its initial value of 0.0
    if accountBalance >= 10.0 {
        self.accountBalance = accountBalance;
    }
        if yearlyInterest > 0.0 && yearlyInterest <= 2.0{
            self.yearlyInterest = yearlyInterest;
            
        }
}
    // deposit (add) a valid amount into the Account
    public func credit(amount: Double) {
        // if amount is valid, add it to the balance
        if amount > 0.0 {
            accountBalance = accountBalance + amount
        }
    } // end method
    
    // withdraw (subtract) a valid amount from the Account
    public func debit(amount: Double) {
        // if amount is valid, and the balance will not
        // become negative, subtract it from the balance
        if amount > 0.0 {
            if  accountBalance - amount >= 0.0 {
                accountBalance = accountBalance - amount
            }
        }
    } // end method
    
}
