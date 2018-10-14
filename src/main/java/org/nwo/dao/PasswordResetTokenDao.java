package org.nwo.dao;

import java.util.Date;
import java.util.stream.Stream;

import org.nwo.domain.User;
import org.nwo.domain.security.PasswordResetToken;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface PasswordResetTokenDao {

	
PasswordResetToken findByToken(String token);
	
	PasswordResetToken findByUser(User user);
	
	Stream<PasswordResetToken> findAllByExpiryDateLessThan(Date now);
	
	@Modifying
	@Query("delete from PasswordResetToken t where t.expiryDate <= ?1")
	void deleteAllExpiredSince(Date now);
	
	void save(PasswordResetToken myToken);
}
