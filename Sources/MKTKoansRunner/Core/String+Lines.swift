extension String {
    var lines: [String] {
        return self.characters.split{$0 == "\n"}.map(String.init)
    }
}
