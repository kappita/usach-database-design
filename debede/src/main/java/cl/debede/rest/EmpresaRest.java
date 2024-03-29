package cl.debede.rest;

import cl.debede.model.Empresa;
import cl.debede.service.EmpresaService;
import java.net.URI;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/empresa")
public class EmpresaRest {
    
    @Autowired
    private EmpresaService empresaService;
    
    @PostMapping
    @ResponseBody
    public ResponseEntity<Empresa> crear(@RequestBody Empresa empresa){
        Empresa resultado = empresaService.create(empresa);
        try {
            return ResponseEntity.created(new URI("/empresa"+resultado.getId())).body(resultado);
        } catch (Exception e){
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }
    
    @GetMapping
    public ResponseEntity<List<Empresa>> getAllEmpresa(){
        return ResponseEntity.ok(empresaService.getAll());
    }
    
    @GetMapping("/getall")
    public RedirectView getEmpresa(){
        RedirectView redirect = new RedirectView();
        redirect.setUrl("http://localhost:8086/producto");
        return redirect;
    }
    
    @GetMapping("/getminor")
    public RedirectView getMinorEmpresa(){
        List<Empresa> empresas = empresaService.getMinor();
        String temp = "http://localhost:8086/producto/all/";
        
        for (Empresa empresa:empresas) {
            temp = temp.concat(String.valueOf(empresa.getId() + ","));
        }
        
        RedirectView redirect = new RedirectView();
        redirect.setUrl(temp);
        
        return redirect;
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Empresa> getEmpresa(@PathVariable Long id){
        return ResponseEntity.ok(empresaService.show(id));
    }
    
    @GetMapping("/nombre/{nombre}")
    public ResponseEntity<List<Empresa>> getEmpresaName(@PathVariable String nombre){
        return ResponseEntity.ok(empresaService.showName(nombre));
    }
    
    @PutMapping("/{id}")
    @ResponseBody
    public ResponseEntity<String> update(@RequestBody Empresa empresa, @PathVariable Long id){
        return ResponseEntity.ok(empresaService.update(empresa, id));
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<String> borrar(@PathVariable Long id){
        return ResponseEntity.ok(empresaService.delete(id));
    }
}
