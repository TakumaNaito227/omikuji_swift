import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    // Stringの配列宣言
    let fortunes: [String] = ["大吉", "中吉", "小吉", "凶"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ランダムに運勢を選択
        if let randomFortune = fortunes.randomElement() {
            result.text = randomFortune
            // 文字中央寄せ
            result.textAlignment = NSTextAlignment.center
            
            // 運勢に応じて背景色を設定
            switch randomFortune {
            case "大吉":
                view.backgroundColor = UIColor.red
            case "凶":
                view.backgroundColor = UIColor.gray
            default:
                view.backgroundColor = UIColor.yellow
            }
        }
    }
}
