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
        let seaSickSteve = Artist.init(id: 3, name: "SeaSick Steve", stage: "Beach Stage", time: "20h", picName: "Seasick.jpeg", info: "Seasick Steve, artiestennaam van Steven Leach (Oakland, Californië, 1951) is een Amerikaans bluesmuzikant. Hij speelt vooral op zelfgemaakte instrumenten, waaronder een driesnarige gitaar, maar zingt ook.")
        let gepettoWhales = Artist.init(id: 5, name: "Geppetto & The Whales", stage: "Beach Stage", time: "22h", picName: "Gepetto.jpeg", info: "Geppetto & The Whales is een in 2009 opgerichte Belgische band, afkomstig uit de Antwerpse Noorderkempen, die een mix brengt van americana en meerstemmige pop. Hun deelnames aan de Humo's Rock Rally in 2010 en 2012 resulteerden in een grote bekendheid in het Vlaamse muzieklandschap.")
        
        //dune zaterdag
        let kapiteinWinokio = Artist.init(id: 2, name: "Kapitein Winokio", stage: "Dune Stage", time: "19h", picName: "kaptein.jpeg", info: "Kapitein Winokio is een Vlaams muziekproject en typetje van Winok Seresia. Kapitein Winokio richt zich met eigentijdse versies van traditionele kinderliedjes op een zeer jong publiek. Kapitein Winokio treedt live op en brengt cd's en boeken op de markt.")
        let nemo = Artist.init(id: 4, name: "Nemo", stage: "Dune Stage", time: "21h", picName: "nemo.jpeg", info: "Lorem Ipsum")
        let crabs = Artist.init(id: 6, name: "Crabs", stage: "Dune Stage", time: "23h", picName: "crabs.jpeg", info: "Lorem Ipsum")
       
        //aanmaak zaterdag LineUpDay
        let lineUpSaturday = LineUpDay.init(naam: "Zaterdag")
        lineUpSaturday.artistList! += [freddyFish,kapiteinWinokio, seaSickSteve, nemo, gepettoWhales, crabs]
        
        //aanmaken artists
        //beach zondag
        let eddyFish = Artist.init(id: 7, name: "Eddy Fish", stage: "Beach Stage", time: "18h", picName: "Eddy.jpeg", info: "Eddy Fish brengt voor u de leukste popsongs.")
        let seaSickCleve = Artist.init(id: 9, name: "SeaSick Cleeve", stage: "Beach Stage", time: "20h", picName: "SeasickCleve.jpeg", info: "Seasick Cleve, artiestennaam van Steven Leach (Oakland, Californië, 1951) is een Amerikaans bluesmuzikant. Hij speelt vooral op zelfgemaakte instrumenten, waaronder een driesnarige gitaar, maar zingt ook.")
        let freeWilly = Artist.init(id: 11, name: "Free Willy", stage: "Beach Stage", time: "22h", picName: "Freewilly.jpeg", info: "Free Willy lorem ipsum")
        
        //dune zondag
        let deFlippers = Artist.init(id: 8, name: "De Flippers", stage: "Dune Stage", time: "19h", picName: "flippers.jpeg", info: "De Flippers lorem ipsum")
        let dory = Artist.init(id: 10, name: "Dory", stage: "Dune Stage", time: "21h", picName: "dory.jpeg", info: "Lorem Ipsum")
        let ariel = Artist.init(id: 12, name: "Ariel", stage: "Dune Stage", time: "23h", picName: "ariel.jpeg", info: "Lorem Ipsum")
        
        //aanmaak zondag LineUpDay
        let lineUpSunday = LineUpDay.init(naam: "Zondag")
        lineUpSunday.artistList! += [eddyFish, deFlippers, seaSickCleve, dory, freeWilly, ariel]
               
        self.dayList = [lineUpSaturday, lineUpSunday]
        
    }
    
    
}
