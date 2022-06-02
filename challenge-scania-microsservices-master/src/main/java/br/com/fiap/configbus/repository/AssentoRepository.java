package br.com.fiap.configbus.repository;

import br.com.fiap.configbus.model.Assento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AssentoRepository extends JpaRepository<Assento, Long> {
}
