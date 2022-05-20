package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "TB_MODELO_ASSENTO_ONIBUS")
public class ModeloAssento {

    @Id
    @GeneratedValue
    @Column(name = "id_modelo_assento_pk", length = 2)
    private Long id;

    @Column(name = "nm_modelo", length = 20)
    private String nome;

    @Column(name = "ds_modelo", length = 80)
    private String descricao;

    @Deprecated
    public ModeloAssento() {}

    public ModeloAssento(String nome, String descricao) {
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
