package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "TB_MATERIAL_ASSENTO_ONIBUS")
public class MaterialAssento {

    @Id
    @GeneratedValue
    @Column(name = "id_material_assento_pk", length = 2)
    private Long id;

    @Column(name = "nm_material", length = 20)
    private String nome;

    @Deprecated
    public MaterialAssento() {}

    public MaterialAssento(String nome) {
        this.nome = nome;
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

}
