//
//  UtilityEnum.swift
//  Energy Expert for PG&E
//
//  Created by Javier Refuerzo on 1/9/25.
//

public enum UtilityEnum: String {
    
    case pge = "pge"
    case sce = "sce"
    case sce2 = "sce2"
    
    //var data:(name: String){
    public var name:(String){
        switch self {
        case .pge:
            return "Pacific Gas and Electric (PG&E)"
        case .sce,
                .sce2:
            return "Southern California Edison (SCE)"
        }
    }
    
    public var nameShort:(String){
        switch self {
        case .pge:
            return "PG&E"
        case .sce,
                .sce2:
            return "SCE"
        }
    }
    
    
    
    public static func getEnum(providerName: String?) -> UtilityEnum? {
        switch providerName {
        case "PGE",
             "pge",
             "PG&E",
             "pg&e":
            return .pge
        case "SCE",
             "sce":
            return .sce
        case "SCE2",
            "sce2":
            return .sce2
        default:
            return nil
        }
    }
    
    
    
}
