package br.com.fiap.configbus.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "TB_CONFIGURACAO_ONIBUS")
public class Configuracao {

    @Id
    @GeneratedValue
    @Column(name = "id_config_pk", length = 2)
    private Long id;

    private boolean bagageiro;

    private boolean arCondicionado;

    @ManyToOne
    @JoinColumn(name = "id_tipo_fk")
    private Tipo tipo;

    @ManyToOne
    @JoinColumn(name = "id_banheiro_fk")
    private Banheiro banheiro;

    @ManyToOne
    @JoinColumn(name = "id_modelo_fk")
    private Modelo modelo;

    @ManyToOne
    @JoinColumn(name = "id_assento_fk")
    private Assento assento;

    @Deprecated
    public Configuracao() {}

    public Configuracao(boolean bagageiro, boolean arCondicionado, Tipo tipo, Banheiro banheiro, Modelo modelo, Assento assento) {
        this.bagageiro = bagageiro;
        this.arCondicionado = arCondicionado;
        this.tipo = tipo;
        this.banheiro = banheiro;
        this.modelo = modelo;
        this.assento = assento;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public boolean isBagageiro() {
        return bagageiro;
    }

    public void setBagageiro(boolean bagageiro) {
        this.bagageiro = bagageiro;
    }

    public boolean isArCondicionado() {
        return arCondicionado;
    }

    public void setArCondicionado(boolean arCondicionado) {
        this.arCondicionado = arCondicionado;
    }

    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    public Banheiro getBanheiro() {
        return banheiro;
    }

    public void setBanheiro(Banheiro banheiro) {
        this.banheiro = banheiro;
    }

    public Modelo getModelo() {
        return modelo;
    }

    public void setModelo(Modelo modelo) {
        this.modelo = modelo;
    }

    public Assento getAssento() {
        return assento;
    }

    public void setAssento(Assento assento) {
        this.assento = assento;
    }

}
