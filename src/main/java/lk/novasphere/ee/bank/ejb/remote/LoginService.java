package lk.novasphere.ee.bank.ejb.remote;

import lk.novasphere.ee.bank.entity.User;

public interface LoginService {
    boolean login(String email, String password);
    User findByEmail(String email);
}
