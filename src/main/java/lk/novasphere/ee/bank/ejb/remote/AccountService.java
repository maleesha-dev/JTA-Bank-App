package lk.novasphere.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.novasphere.ee.bank.entity.Account;
import lk.novasphere.ee.bank.entity.AccountType;
import lk.novasphere.ee.bank.exception.AccountNotFoundException;
import lk.novasphere.ee.bank.exception.InsufficientFundsException;

import java.math.BigDecimal;
import java.util.List;

@Local
public interface AccountService {
    void creditToAccount(String accountNo, BigDecimal amount);
    void debitToAccount(String accountNo, BigDecimal amount) throws InsufficientFundsException;
    Account findByAccountNo(String accountNo) throws AccountNotFoundException;
    List<Account> findAccountsByUserEmail(String email) throws  AccountNotFoundException;
    Account createAccount(String email, AccountType type, BigDecimal openingBalance);
    String generateAccountNumber(AccountType type);
}
