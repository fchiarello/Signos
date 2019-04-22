//
//  ViewController.swift
//  signos
//
//  Created by Fellipe Ricciardi Chiarello on 3/26/19.
//  Copyright © 2019 fchiarello. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significadoSignos:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configurando os signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        //configurando significado Signos
        significadoSignos.append("segundo a mitologia grega, o filho do rei Atamas – Frixo -, ia ser assassinado pela sua madrasta, quando um carneiro com lã de ouro, conhecido também como o velocino de ouro, que foi enviado pela sua mãe. O carneiro foi sacrificado no lugar do menino, ganhando um túmulo no pomar de Ares, que é o deus da guerra")
        significadoSignos.append("foi o primeiro signo do Zodíaco a ser criado, ele inicia a primavera e também o início do ano. A imagem do touro vem de um episódio em que Zeus, chefe dos deuses, usou da imagem desse animal para conseguir seduzir uma princesa")
        significadoSignos.append("dois filhos de Zeus, conhecidos como Castor e Pólux, se apaixonaram por duas garotas comprometidas, desafiando os companheiros das moças. Castor morreu e então Pólux pediu para que Zeus o matasse. Em homenagem aos filhos, Zeus colocou a imagem dos gêmeos nos céus")
        significadoSignos.append("o caranguejo foi enviado para lutar contra Hércules, filho bastardo de Zeus pela sua mulher oficial, Hera. O animal morreu em batalha mas foi lhe concedida uma imagem no céu diante de tamanha coragem")
        significadoSignos.append("morto por Hércules, o animal foi estrangulado e de sua pele foi feito um manto para o Herói. Em sua homenagem, foi destinado com as estrelas a forma do animal no céu")
        significadoSignos.append("representação da deusa da justiça, ela ficou doente pelas guerras dos homens. Foi o último ser celestial a subir para o Olimpo, então Minerva, a deusa da sabedoria, colocou uma imagem no céus como homenagem")
        significadoSignos.append("o item utilizado por Virgem para pesar a alma dos recém mortos, determinado se teriam benefícios ou malefícios na vida após a morte")
        significadoSignos.append("Apoi, irmão de Artêmis ficou com inveja da amizade da irmã com o gigante Órion, enviando um escorpião para mordê-lo. O escorpião foi morto e então Zeus colocou sua imagem no céu como homenagem")
        significadoSignos.append("Quiron era o centauro mais sábio de sua raça. Ele foi atingido por uma flecha lançada por Hércules, então foi homenageado por Zeus com uma constelação")
        significadoSignos.append("segunda as lendas gregas, a cabra que aparece tem uma cauda de peixe. Isso representa Pan, deus da natureza, que enquanto fugia do Titã Tifon, se jogou na água na fuga. Porém acabou morrendo enquanto virava peixe pois a outra metade de seu corpo estava fora d’água")
        significadoSignos.append("conhecido como um dos símbolos aquáticos dos babilônicos, o seu mês representa o período das chuvas, o que deu origem ao símbolo do homem segurando o jarro de água")
        significadoSignos.append("Afrodite e seu filho, Eros, se transformaram em peixes para conseguir escapar do titã Tifon, que temia a água. Então Atena criou a constelação como forma de lembrar esse acontecimento")
        
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertaController = UIAlertController(title: "História do signo!", message: significadoSignos [indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil )
        
//        print(significadoSignos [indexPath.row])
    }

}

