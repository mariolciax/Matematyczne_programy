class Polynomial:
    def __init__(self, n, coefs):
        self.n = n
        self.coefs = coefs

    def __add__(self, other):
        if self.n == other.n:
            sum = [0] * len(self.coefs)
            for i in range(len(self.coefs)):
                sum[i] = self.coefs[i] + other.coefs[i]
            return sum
        elif self.n > other.n:
            sum = [0] * len(self.coefs)
            i = 0
            while i < len(other.coefs):
                sum[i] = self.coefs[i] + other.coefs[i]
                i += 1
            for i in range(len(other.coefs), len(self.coefs)):
                sum[i] = self.coefs[i]
            return sum
        elif self.n < other.n:
            sum = [0] * len(other.coefs)
            i = 0
            while i < len(self.coefs):
                sum[i] = self.coefs[i] + other.coefs[i]
                i += 1
            for i in range(len(self.coefs), len(other.coefs)):
                sum[i] = other.coefs[i]
            return sum
    def __sub__(self, other):
        if self.n == other.n:
            sub = [0] * len(self.coefs)
            for i in range(len(self.coefs)):
                sub[i] = self.coefs[i] - other.coefs[i]
            return sub
        elif self.n > other.n:
            sum = [0] * len(self.coefs)
            i = 0
            while i < len(other.coefs):
                sum[i] = self.coefs[i] - other.coefs[i]
                i += 1
            for i in range(len(other.coefs), len(self.coefs)):
                sum[i] = self.coefs[i]
            return sum
        elif self.n < other.n:
            sum = [0] * len(other.coefs)
            i = 0
            while i < len(self.coefs):
                sum[i] = self.coefs[i] - other.coefs[i]
                i += 1
            for i in range(len(self.coefs), len(other.coefs)):
                sum[i] = -other.coefs[i]
            return sum
    def __truediv__(self, other):
        #self / other
        licznik = self.coefs[0] * other
        for i in range(len(self.coefs)):
            licznik =  self.coefs[i] + self.coefs[i+1]



    def wypisuj(self):
        wielomian = str(f"{self.coefs[0]} + ")
        for i in range(1,len(self.coefs)):
            wielomian += str(self.coefs[i]) + str(f"x^{i}")
            if i < len(self.coefs) - 1:
                wielomian += " + "
        print(wielomian)


    def __call__(self, x):
        wartosc = 0
        for i in range(len(self.coefs)):
            wartosc += self.coefs[i] * x**i
        return wartosc



wielomian1 = Polynomial(3, [1,2,3,1])
wielomian2 = Polynomial(2, [2,3,4])
print(wielomian1.__add__(wielomian2))
print(wielomian1.__sub__(wielomian2))
print(Polynomial.__call__(wielomian2,1))
wielomian2.wypisuj()

