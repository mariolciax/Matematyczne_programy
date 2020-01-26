 def maxDepth(self):
        def _maxDepth(node):
            if node is None:
                return 0

            else:
                lDepth = _maxDepth(node.left)
                rDepth = _maxDepth(node.right)
                if (lDepth > rDepth):
                    return lDepth + 1
                else:
                    return rDepth + 1
        return _maxDepth(self.root)
        
        
    def items(self):  # w s z y s t k i e elementy in−order
        def _items(akt, x):
            if akt is None:
                return
            _items(akt.lewy, x)
            x.append(akt.klucz)
            _items(akt.prawy, x)

        x = []
        _items(self.korzen, x)
        return x
        
        
    def licz_wezly(self):
        def _items(akt, x):
            if akt is None:
                return
            _items(akt.lewy, x)
            x[0] += 1
            _items(akt.prawy, x)

        x = [0]
        _items(self.korzen, x)
        return x
       
    def licz_droge(self):
        def _licz_droge(node, licznik):
            if node is None:
                return licznik
            if node.left is None and node.right is None:
                return licznik
            if node.left is not None and node.right is None:
                licznik[0] += 1
                _licz_droge(node.left, licznik)
            if node.left is None and node.right is not None:
                licznik[0] += 1
                _licz_droge(node.right, licznik)
            if node.left is not None and node.right is not None:
                licznik[0] += 2
                _licz_droge(node.right, licznik)
                _licz_droge(node.left, licznik)

        licznik = [0]
        _licz_droge(self.root, licznik)
        return licznik
