package lk.novasphere.ee.bank.exception;

import jakarta.ejb.ApplicationException;

@ApplicationException(rollback = true)
public class DuplicateEmailException extends Exception{

    public DuplicateEmailException(String email){
        super("An account already exists with this email address " + email);
    }
}
