package org.nwo.repository;

import org.nwo.domain.security.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
	Role findByname(String name);
}
