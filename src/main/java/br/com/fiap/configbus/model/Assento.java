package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "TB_ASSENTO_ONIBUS")
public class Assento {

    @Id
    @GeneratedValue
    @Column(name = "id_assento_pk", length = 2)
    private Long id;

    @Column(name = "qtd_assentos", length = 2)
    private Long qtd;

    @ManyToOne
    @JoinColumn(name = "id_modelo_fk")
    private ModeloAssento modelo;

    @ManyToOne
    @JoinColumn(name = "id_assento_fk")
    private MaterialAssento assento;

    @Deprecated
    public Assento() {}

    public Assento(Long qtd, ModeloAssento modelo, MaterialAssento assento) {
        this.qtd = qtd;
        this.modelo = modelo;
        this.assento = assento;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getQtd() {
        return qtd;
    }

    public void setQtd(Long qtd) {
        this.qtd = qtd;
    }

    public ModeloAssento getModelo() {
        return modelo;
    }

    public void setModelo(ModeloAssento modelo) {
        this.modelo = modelo;
    }

    public MaterialAssento getAssento() {
        return assento;
    }

    public void setAssento(MaterialAssento assento) {
        this.assento = assento;
    }

}
