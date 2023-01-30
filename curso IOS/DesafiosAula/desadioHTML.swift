let urls = ["https://www.apple.com",
            "http://www.meusite.com.br",
            "http://www.bila.com",
            "https://www.ceara.com",
            "https://www.iphone.com"]

var newURLs = [String] ()

for url in urls {
  if url.hasPrefix("https") {
    newURLs.append(url)
  } else if let index = url.firstIndex(of: ":") {
    var newURL = url
    newURL.insert("s", at: index)
    newURLs.append(newURL)
  }
}

print (newURLs)