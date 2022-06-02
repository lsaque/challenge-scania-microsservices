package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.Modelo;
import br.com.fiap.configbus.repository.ModeloRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("modelos")
public class ModeloViewController {

    private ModeloRepository modeloRepository;

    public ModeloViewController(ModeloRepository modeloRepository) { this.modeloRepository = modeloRepository; }

    @GetMapping
    public String listModelos(Model model) {
        model.addAttribute("modelos", modeloRepository.findAll());
        return "modelo/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("modelo", new Modelo());
        return "modelo/form";
    }
}
