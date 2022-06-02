package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.Assento;
import br.com.fiap.configbus.repository.AssentoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("assentos")
public class AssentoViewController {
    private AssentoRepository assentoRepository;

    public AssentoViewController(AssentoRepository assentoRepository) { this.assentoRepository = assentoRepository; }

    @GetMapping
    public String listAssentos(Model model) {
        model.addAttribute("assentos", assentoRepository.findAll());
        return "assento/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("assento", new Assento());
        return "assento/form";
    }

}
