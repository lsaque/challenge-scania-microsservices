package br.com.fiap.configbus.model;

import javax.persistence.*;

@Entity
@Table(name = "TB_ORCAMENTO_ONIBUS")
public class Orcamento {

    @Id
    @GeneratedValue
    @Column(name = "id_orcamento_pk", length = 8)
    private Long id;

    @Column(name = "nm_pessoa_solicitante", length = 30)
    private String nomeSolicitante;

    @Column(name = "sobrenome_pessoa_solicitante", length = 30)
    private String sobrenomeSolicitante;

    @Column(name = "nro_telefone_contato", length = 15)
    private String numeroTelefone;

    @Column(name = "nm_empresa_solicitante", length = 60)
    private String nomeEmpresa;

    @Column(length = 10)
    private String cep;

    private String comentarios;

    @ManyToOne
    @JoinColumn(name = "id_cargo_fk")
    private CargoOrcamento cargo;

    @ManyToOne
    @JoinColumn(name = "id_config_fk")
    private Configuracao configuracao;

    @Deprecated
    public Orcamento() {}

    public Orcamento(String nomeSolicitante, String sobrenomeSolicitante, String numeroTelefone, String nomeEmpresa, String cep, String comentarios, CargoOrcamento cargo, Configuracao configuracao) {
        this.nomeSolicitante = nomeSolicitante;
        this.sobrenomeSolicitante = sobrenomeSolicitante;
        this.numeroTelefone = numeroTelefone;
        this.nomeEmpresa = nomeEmpresa;
        this.cep = cep;
        this.comentarios = comentarios;
        this.cargo = cargo;
        this.configuracao = configuracao;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNomeSolicitante() {
        return nomeSolicitante;
    }

    public void setNomeSolicitante(String nomeSolicitante) {
        this.nomeSolicitante = nomeSolicitante;
    }

    public String getSobrenomeSolicitante() {
        return sobrenomeSolicitante;
    }

    public void setSobrenomeSolicitante(String sobrenomeSolicitante) {
        this.sobrenomeSolicitante = sobrenomeSolicitante;
    }

    public String getNumeroTelefone() {
        return numeroTelefone;
    }

    public void setNumeroTelefone(String numeroTelefone) {
        this.numeroTelefone = numeroTelefone;
    }

    public String getNomeEmpresa() {
        return nomeEmpresa;
    }

    public void setNomeEmpresa(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    public CargoOrcamento getCargo() {
        return cargo;
    }

    public void setCargo(CargoOrcamento cargo) {
        this.cargo = cargo;
    }

    public Configuracao getConfiguracao() {
        return configuracao;
    }

    public void setConfiguracao(Configuracao configuracao) {
        this.configuracao = configuracao;
    }
}
