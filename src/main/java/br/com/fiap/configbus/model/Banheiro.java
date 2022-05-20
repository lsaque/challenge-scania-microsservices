package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "TB_BANHEIRO_ONIBUS")
public class Banheiro {

    @Id
    @GeneratedValue
    @Column(name = "id_banheiro_pk", length = 2)
    private Long id;

    @Column(name = "nm_banheiro", length = 20)
    private String nome;

    @Column(name = "ds_banheiro", length = 80)
    private String descricao;

    @OneToMany
    @JoinColumn(name = "id_banheiro_fk")
    private List<Configuracao> configuracoes;

    @Deprecated
    public Banheiro() {}

    public Banheiro(String nome, String descricao, List<Configuracao> configuracoes) {
        this.nome = nome;
        this.descricao = descricao;
        this.configuracoes = new ArrayList<>();
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

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public List<Configuracao> getConfiguracoes() {
        return configuracoes;
    }

    public void setConfiguracoes(List<Configuracao> configuracoes) {
        this.configuracoes = configuracoes;
    }

}
