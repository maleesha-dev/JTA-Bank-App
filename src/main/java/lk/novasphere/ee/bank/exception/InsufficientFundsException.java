package lk.novasphere.ee.bank.exception;

import jakarta.ejb.ApplicationException;

import java.math.BigDecimal;

@ApplicationException(rollback = true)
public class InsufficientFundsException extends RuntimeException {

    public InsufficientFundsException(String accountNo, BigDecimal requested, BigDecimal available) {
        super("Insufficient funds in account " + accountNo + ". Requested: " + requested + ", Available: " + available);
    }
}
