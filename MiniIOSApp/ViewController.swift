// import UIKit

// class ViewController: UIViewController {
//     override func viewDidLoad() {
//         super.viewDidLoad()
//         view.backgroundColor = .white
        
//         let label = UILabel()
//         label.text = "Hello Artifacts!"
//         label.textColor = .blue
//         label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
//         label.translatesAutoresizingMaskIntoConstraints = false
//         view.addSubview(label)
        
//         NSLayoutConstraint.activate([
//             label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//             label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//         ])
//     }
// }

import UIKit
import WebKit // Подключаем движок браузера

class ViewController: UIViewController {
    var webView: WKWebView!

    override func loadView() {
        // Вместо обычного белого экрана создаем WebView
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView // Делаем WebView главным экраном
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Указываем адрес сайта
        if let url = URL(string: "https://bowlmates.club/user/UI/index-tw-pwa2.html?page=twHome") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
