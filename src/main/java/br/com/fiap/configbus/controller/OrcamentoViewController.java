package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.Orcamento;
import br.com.fiap.configbus.repository.OrcamentoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("orcamentos")
public class OrcamentoViewController {

    private OrcamentoRepository orcamentoRepository;

    public OrcamentoViewController(OrcamentoRepository orcamentoRepository) { this.orcamentoRepository = orcamentoRepository; }

    @GetMapping
    public String listOrcamentos(Model model) {
        model.addAttribute("orcamentos", orcamentoRepository.findAll());
        return "orcamento/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("orcamento", new Orcamento());
        return "orcamento/form";
    }
}
