package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "TB_TIPO_ONIBUS")
public class Tipo {

    @Id
    @GeneratedValue
    @Column(name = "id_tipo_pk", length = 8)
    private Long id;

    @Column(name = "nm_tipo", length = 20)
    private String nome;

    @Column(name = "ds_tipo", length = 80)
    private String descricao;

    @Deprecated
    public Tipo() {}

    public Tipo(String nome, String descricao) {
        this.nome = nome;
        this.descricao = descricao;
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

}
