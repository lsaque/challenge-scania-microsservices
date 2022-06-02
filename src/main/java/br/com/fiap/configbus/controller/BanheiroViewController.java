package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.Banheiro;
import br.com.fiap.configbus.repository.BanheiroRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("banheiros")
public class BanheiroViewController {

    private BanheiroRepository banheiroRepository;

    public BanheiroViewController(BanheiroRepository banheiroRepository) { this.banheiroRepository = banheiroRepository; }

    @GetMapping
    public String listBanheiros(Model model) {
        model.addAttribute("banheiros", banheiroRepository.findAll());
        return "banheiro/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("banheiro", new Banheiro());
        return "banheiro/form";
    }

}
