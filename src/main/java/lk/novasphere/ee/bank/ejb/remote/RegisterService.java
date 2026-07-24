package lk.novasphere.ee.bank.ejb.remote;

import jakarta.ejb.Local;
import lk.novasphere.ee.bank.exception.DuplicateEmailException;

@Local
public interface RegisterService {
    void registerUser(String name, String email, String password, double openingBalance) throws DuplicateEmailException;
}
