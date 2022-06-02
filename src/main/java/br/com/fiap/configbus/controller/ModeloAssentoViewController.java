package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.ModeloAssento;
import br.com.fiap.configbus.repository.ModeloAssentoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("assentos/modelos")
public class ModeloAssentoViewController {

    private ModeloAssentoRepository modeloAssentoRepository;

    public ModeloAssentoViewController(ModeloAssentoRepository modeloAssentoRepository) { this.modeloAssentoRepository = modeloAssentoRepository; }

    @GetMapping
    public String listModelosAssentos(Model model) {
        model.addAttribute("modelosAssentos", modeloAssentoRepository.findAll());
        return "modelo-assento/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("modeloAssento", new ModeloAssento());
        return "modelo-assento/form";
    }

}
