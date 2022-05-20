package br.com.fiap.configbus.repository;

import br.com.fiap.configbus.model.Configuracao;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfiguracaoRepository extends JpaRepository<Configuracao, Long> {
}
