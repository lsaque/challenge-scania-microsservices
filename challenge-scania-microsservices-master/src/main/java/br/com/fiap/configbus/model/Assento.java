package br.com.fiap.configbus.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
    @JoinColumn(name = "id_material_fk")
    private MaterialAssento material;

    @Deprecated
    public Assento() {}

    public Assento(Long qtd, ModeloAssento modelo, MaterialAssento material) {
        this.qtd = qtd;
        this.modelo = modelo;
        this.material = material;
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

    public MaterialAssento getMaterial() {
        return material;
    }

    public void setMaterial(MaterialAssento material) {
        this.material = material;
    }

}
