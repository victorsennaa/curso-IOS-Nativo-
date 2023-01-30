let nomes = ("Victor Sena, Maria Eduarda, Meu livro favorito")

print(nomes)

var nomesSemEspaço = [String] ()

for nomes in nomesSemEspaço {
  if nomes.hasPrefix(" ") {
    nomesSemEspaço.append(nomes)
  } else if let index = nomes.firstIndex(of: "") {
    var nomesSem = nomes
    nomesSem.insert("", at: index)
    nomesSemEspaço.append(nomesSem)
  }
}

print(nomesSemEspaço)


