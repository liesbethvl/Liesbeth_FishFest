//
//  DAO.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import Foundation

class DAO {
    
    var dayList:[LineUpDay]?
    
    init(){
        //aanmaken artists
        //beach zaterdag
        let freddyFish = Artist.init(id: 1, name: "Freddy Fish", stage: "Beach Stage", time: "18h", picName: "Freddy.jpeg", info: "Freddy Fish brengt voor u de leukste popsongs.")
        let seaSickSteve = Artist.init(id: 2, name: "SeaSick Steve", stage: "Beach Stage", time: "20h", picName: "Seasick.jpeg", info: "Seasick Steve, artiestennaam van Steven Leach (Oakland, Californië, 1951) is een Amerikaans bluesmuzikant. Hij speelt vooral op zelfgemaakte instrumenten, waaronder een driesnarige gitaar, maar zingt ook.")
        let gepettoWhales = Artist.init(id: 3, name: "Geppetto & The Whales", stage: "Beach Stage", time: "22h", picName: "Gepetto.jpeg", info: "Geppetto & The Whales is een in 2009 opgerichte Belgische band, afkomstig uit de Antwerpse Noorderkempen, die een mix brengt van americana en meerstemmige pop. Hun deelnames aan de Humo's Rock Rally in 2010 en 2012 resulteerden in een grote bekendheid in het Vlaamse muzieklandschap.")
        //aanmaken lineUpStage Beach
        let beachSaturday = LineUpStage.init(naam: "Beach Stage")
        beachSaturday.artistList! += [freddyFish, seaSickSteve, gepettoWhales]
        
        //dune zondag
        let kapiteinWinokio = Artist.init(id: 4, name: "Kapitein Winokio", stage: "Dune", time: "19h", picName: "kaptein.jpeg", info: "Kapitein Winokio is een Vlaams muziekproject en typetje van Winok Seresia. Kapitein Winokio richt zich met eigentijdse versies van traditionele kinderliedjes op een zeer jong publiek. Kapitein Winokio treedt live op en brengt cd's en boeken op de markt.")
        let nemo = Artist.init(id: 5, name: "Nemo", stage: "Dune", time: "21h", picName: "nemo.jpeg", info: "Lorem Ipsum")
        let crabs = Artist.init(id: 6, name: "Crabs", stage: "Dune", time: "23h", picName: "crabs.jpeg", info: "Lorem Ipsum")
        //aanmaken lineUpStage Dune
        let duneSaturday = LineUpStage.init(naam: "Dune Stage")
        duneSaturday.artistList! += [kapiteinWinokio, nemo, crabs]
        
        //aanmaak zaterdag LineUp
        let lineUpSaturday = LineUpDay.init(naam: "Zaterdag")
        lineUpSaturday.stageList! += [beachSaturday, duneSaturday]
        
        //aanmaken artists
        //beach zondag
        let eddyFish = Artist.init(id: 7, name: "Eddy Fish", stage: "Beach Stage", time: "18h", picName: "Eddy.jpeg", info: "Eddy Fish brengt voor u de leukste popsongs.")
        let seaSickCleve = Artist.init(id: 8, name: "SeaSick Cleeve", stage: "Beach Stage", time: "20h", picName: "SeasickCleve.jpeg", info: "Seasick Cleve, artiestennaam van Steven Leach (Oakland, Californië, 1951) is een Amerikaans bluesmuzikant. Hij speelt vooral op zelfgemaakte instrumenten, waaronder een driesnarige gitaar, maar zingt ook.")
        let freeWilly = Artist.init(id: 9, name: "Free Willy", stage: "Beach Stage", time: "22h", picName: "Freewilly.jpeg", info: "Free Willy lorem ipsum")
        //aanmaken lineUpStage Beach
        let beachSunday = LineUpStage.init(naam: "Beach Stage")
        beachSunday.artistList! += [eddyFish, seaSickCleve, freeWilly]
        
        //dune zondag
        let deFlippers = Artist.init(id: 10, name: "De Flippers", stage: "Dune", time: "19h", picName: "flippers.jpeg", info: "De Flippers lorem ipsum")
        let dory = Artist.init(id: 11, name: "Dory", stage: "Dune", time: "21h", picName: "dory.jpeg", info: "Lorem Ipsum")
        let ariel = Artist.init(id: 6, name: "Ariel", stage: "Dune", time: "23h", picName: "ariel.jpeg", info: "Lorem Ipsum")
        //aanmaken lineUpStage Dune
        let duneSunday = LineUpStage.init(naam: "Dune Stage")
        duneSunday.artistList! += [deFlippers, dory, ariel]
        
        //aanmaak dag LineUp
        let lineUpSunday = LineUpDay.init(naam: "Zaterdag")
        lineUpSunday.stageList! += [beachSunday, duneSunday]
        
        
        
        self.dayList = [lineUpSaturday, lineUpSunday]
        
    }
    
    
}
