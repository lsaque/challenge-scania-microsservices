package br.com.fiap.configbus.repository;

import br.com.fiap.configbus.model.Tipo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TipoRepository extends JpaRepository<Tipo, Long> {
}
