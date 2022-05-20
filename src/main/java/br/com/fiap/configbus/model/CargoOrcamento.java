package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "TB_CARGO_ORCAMENTO")
public class CargoOrcamento {

    @Id
    @GeneratedValue
    @Column(name = "id_cargo_orcamento", length = 2)
    private Long id;

    @Column(name = "nm_cargo", length = 40)
    private String nome;

    @OneToMany
    @JoinColumn(name = "id_cargo_fk")
    private List<Orcamento> orcamentos;

    @Deprecated
    public CargoOrcamento() {}

    public CargoOrcamento(String nome, List<Orcamento> orcamentos) {
        this.nome = nome;
        this.orcamentos = orcamentos;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Orcamento> getOrcamentos() {
        return orcamentos;
    }

    public void setOrcamentos(List<Orcamento> orcamentos) {
        this.orcamentos = orcamentos;
    }

}
