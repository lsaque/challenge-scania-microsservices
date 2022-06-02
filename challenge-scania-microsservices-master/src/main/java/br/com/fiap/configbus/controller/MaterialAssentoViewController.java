package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.MaterialAssento;
import br.com.fiap.configbus.repository.MaterialAssentoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("assentos/materiais")
public class MaterialAssentoViewController {

    private MaterialAssentoRepository materialAssentoRepository;

    public MaterialAssentoViewController(MaterialAssentoRepository materialAssentoRepository) { this.materialAssentoRepository = materialAssentoRepository; }

    @GetMapping
    public String listMateriaisAssentos(Model model) {
        model.addAttribute("materiaisAssentos", materialAssentoRepository.findAll());
        return "material-assento/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("materialAssento", new MaterialAssento());
        return "material-assento/form";
    }
}
