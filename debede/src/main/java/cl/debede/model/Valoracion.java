/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cl.debede.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name = "valoracion")
public class Valoracion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer puntuacion;
    private String comentario;
    private Boolean favorito;
    
    @ManyToOne
    @JoinColumn(name = "id_user")
    private Usuario usuario;
    
    @ManyToOne
    @JoinColumn(name = "id_empresa")
    private Empresa empresa;
    
    public Valoracion() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public Boolean isFavorito() {
        return favorito;
    }

    public void setFavorito(boolean favorito) {
        this.favorito = favorito;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }
    
    public Long getEmpresa() {
        return empresa.getId();
    }
    
    public Empresa empresaGet() {
        return empresa;
    }
    
    public Long getUsuario() {
        return usuario.getId();
    }
    
    public Usuario usuarioGet() {
        return usuario;
    }
}
