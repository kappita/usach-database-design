package cl.debede.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name = "empresa")
public class Empresa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nombre;
    private String correo;
    private String clave;
    private String direccion;
    
    @Column(name = "restriccion_edad")
    private Boolean restriccionEdad;
    
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "empresa")
    private List<Producto> productos;
    
    @OneToMany(mappedBy = "empresa")
    private List<Valoracion> valoraciones;
    
    @OneToMany(mappedBy = "empresa")
    private List<CatEmpEmp> categorias;

    public Empresa() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public Boolean isRestriccion_edad() {
        return restriccionEdad;
    }

    public void setRestriccion_edad(boolean restriccion_edad) {
        this.restriccionEdad = restriccion_edad;
    }

    public List<Producto> getProductos() {
        return productos;
    }

    public void setProductos(List<Producto> productos) {
        this.productos = productos;
    }

    public List<Valoracion> getValoraciones() {
        return valoraciones;
    }
    
    public void setValoraciones(List<Valoracion> valoraciones) {
        this.valoraciones = valoraciones;
    }

    public List<CatEmpEmp> getCategorias() {
        return categorias;
    }

    public void setCategorias(List<CatEmpEmp> categorias) {
        this.categorias = categorias;
    }
    
}
