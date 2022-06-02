package br.com.fiap.configbus.controller;

import br.com.fiap.configbus.model.Configuracao;
import br.com.fiap.configbus.repository.ConfiguracaoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("configuracoes")
public class ConfiguracaoViewController {

    private ConfiguracaoRepository configuracaoRepository;

    public ConfiguracaoViewController(ConfiguracaoRepository configuracaoRepository) { this.configuracaoRepository = configuracaoRepository; }

    @GetMapping
    public String listConfiguracoes(Model model) {
        model.addAttribute("configuracoes", configuracaoRepository.findAll());
        return "configuracao/list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("configuracao", new Configuracao());
        return "configuracao/form";
    }
}
