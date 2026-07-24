package lk.novasphere.ee.bank.exception;

import jakarta.ejb.ApplicationException;

@ApplicationException(rollback = true)
public class AccountNotFoundException extends RuntimeException {

    public AccountNotFoundException(String accountNo) {
        super("Account not found: " + accountNo);
    }
}
