package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.Tipo;

import br.com.fiap.configbus.repository.TipoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tipos")
public class TipoViewController {

    private TipoRepository tipoRepository;

    public TipoViewController(TipoRepository tipoRepository) { this.tipoRepository = tipoRepository; }

    @GetMapping
    public String listTipos(Model model) {
        model.addAttribute("tipos", tipoRepository.findAll());
        return "tipo/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("tipo", new Tipo());
        return "tipo/form";
    }
}
