package proyectobassicprogrammers.modelo;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="perfil")
public class Perfil {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;
    @Column(name="imagen")
    private String perfilImagen;
    @Column(name="telefono")
    private String perfilTelefono;
    @Column(name="crearat")
    private Date perfilCrearAt;
    @Column(name="actualizarat")
    private Date perfilAtactualizarAt;
    
    
    public Perfil(Long id, String perfilImagen, String perfilTelefono, Date perfilCrearAt, Date perfilAtactualizarAt) {
        this.id = id;
        this.perfilImagen = perfilImagen;
        this.perfilTelefono = perfilTelefono;
        this.perfilCrearAt = perfilCrearAt;
        this.perfilAtactualizarAt = perfilAtactualizarAt;
    }
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getPerfilImagen() {
        return perfilImagen;
    }
    public void setPerfilImagen(String perfilImagen) {
        this.perfilImagen = perfilImagen;
    }
    public String getPerfilTelefono() {
        return perfilTelefono;
    }
    public void setPerfilTelefono(String perfilTelefono) {
        this.perfilTelefono = perfilTelefono;
    }
    public Date getPerfilCrearAt() {
        return perfilCrearAt;
    }
    public void setPerfilCrearAt(Date perfilCrearAt) {
        this.perfilCrearAt = perfilCrearAt;
    }
    public Date getPerfilAtactualizarAt() {
        return perfilAtactualizarAt;
    }
    public void setPerfilAtactualizarAt(Date perfilAtactualizarAt) {
        this.perfilAtactualizarAt = perfilAtactualizarAt;
    }
    
    
   

}
