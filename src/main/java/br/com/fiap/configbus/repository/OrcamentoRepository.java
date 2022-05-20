package br.com.fiap.configbus.repository;

import br.com.fiap.configbus.model.Orcamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrcamentoRepository extends JpaRepository<Orcamento, Long> {
}
