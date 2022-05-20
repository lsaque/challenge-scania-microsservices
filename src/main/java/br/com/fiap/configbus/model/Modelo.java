package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "TB_MODELO_ONIBUS")
public class Modelo {

    @Id
    @GeneratedValue
    @Column(name = "id_modelo_pk", length = 2)
    private Long id;

    @Column(name = "nm_modelo", length = 20)
    private String nome;

    @Column(name = "ds_modelo", length = 80)
    private String descricao;

    @Column(name = "link_modelo", length = 200)
    private String link;

    @Deprecated
    public Modelo() {}

    public Modelo(String nome, String descricao, String link) {
        this.nome = nome;
        this.descricao = descricao;
        this.link = link;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

}
