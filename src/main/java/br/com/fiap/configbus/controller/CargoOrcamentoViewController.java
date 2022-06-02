package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.CargoOrcamento;
import br.com.fiap.configbus.repository.CargoOrcamentoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("orcamentos/cargos")
public class CargoOrcamentoViewController {
    private CargoOrcamentoRepository cargoOrcamentoRepository;

    public CargoOrcamentoViewController(CargoOrcamentoRepository cargoOrcamentoRepository) { this.cargoOrcamentoRepository = cargoOrcamentoRepository; }

    @GetMapping
    public String listCargosOrcamentos(Model model) {
        model.addAttribute("cargosOrcamentos", cargoOrcamentoRepository.findAll());
        return "cargo-orcamento/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("cargoOrcamento", new CargoOrcamento());
        return "cargo-orcamento/form";
    }

}
