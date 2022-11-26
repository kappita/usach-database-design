package cl.debede.service;

import cl.debede.model.Usuario;
import cl.debede.repository.UsuarioRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    public Usuario create(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }
    
    public List<Usuario> getAll() {
        return usuarioRepository.findAll();
    }
    
    public Usuario show(Long id) {
        return usuarioRepository.findById(id).get();
    }
    
    public String update(Usuario usuario, Long id) {
        Usuario temp;
        try {
            temp = show(id);
            temp.setNombre(usuario.getNombre());
            return "Usuario actualizado";
        }
        catch(Exception e) {
            return "No existe un usuario con este ID";
        }
    }
    
    public void delete(Long id) {
        usuarioRepository.deleteById(id);
    }
}