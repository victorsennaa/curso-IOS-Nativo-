protocol shape {
    var cor: String{get set}
    var raio: Double {get set}
    var lado: Int {get set}
    var diametro:Double {get set}
    
}

struct cicle: shape {
    var cor: String
    
    var raio: Double
    
    var lado: Int
    
    var diametro: Double
    
    
    
}

struct cube: shape {
    var cor: String
    
    var raio: Double
    
    var lado: Int
    
    var diametro: Double
    
    
}

struct square: shape {
    var cor: String
    
    var raio: Double
    
    var lado: Int
    
    var diametro: Double
    
    
}

