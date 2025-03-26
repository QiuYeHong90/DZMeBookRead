import Foundation

class FYModel: Codable {
    let FullName: String
    let KindSN: Int
    let PinYin: String
    let SN: Int
    let ShortName: String
    let ChapterNumber: Int
    let NewOrOld: Int
    
    func getPath() -> URL? {
        var preText = "旧_"
        if self.NewOrOld == 1 {
            preText = ""
        }
        let name = "/\(preText)\(self.FullName).txt"
        let url = Bundle.main.url(forResource: name, withExtension: nil)
        return url
    }
    
    enum CodingKeys: CodingKey {
        case FullName
        case KindSN
        case PinYin
        case SN
        case ShortName
        case ChapterNumber
        case NewOrOld
    }
    
    static func loadFYModels() -> [FYModel]? {
         
        guard let filePath = Bundle.main.path(forResource: "DirectoryOfFYModel.json", ofType: nil) else {
            return nil
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: filePath))
            let models = try JSONDecoder().decode([FYModel].self, from: data)
            return models
        } catch {
            print("加载或解析 JSON 文件时发生错误: \(error)")
            return nil
        }
    }
}
