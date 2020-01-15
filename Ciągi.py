#Ciągi
class Sequence:
    elements = []
    def __init__(self, n, data):
        self.n = n
        Sequence.elements = [0] * (self.n)
        if type(data) is list:
            for i in range(len(data)):
                if type(data[i]) is int:
                    Sequence.elements[i] = data[i]
                else:
                    raise Exception("Błąd")
            self.data = data
        elif data is None:
            self.data = [0] * self.n
        else:
            raise Exception("Błąd")

    def Lenght(self):
        return self.n
    def __repr__(self):
        napis = f"Sequence with {self.n} elements: \n"
        for i in range(self.n):
            napis += f"{self.data[i] : 8.2f}"
        napis += "\n"
        return napis
    def __getitem__(self, item):
        if type(item) is int:
            return self.data[item]
        elif type(item) is not int:
            raise Exception("Błąd to nie jest int")
        else:
            raise Exception("Błąd niepoprawna wartość")

    def __setitem__(self, key, value):
        if type(key) is int and type(value) is int:
            self.data[key] = value
        else:
            raise Exception("Błąd niepoprawna wartość")

    def __add__(self, other):
        if type(other.data) is list:
            if self.n == other.n:
                sum = [0] * len(self.data)
                for i in range(len(self.data)):
                    sum[i] = self.data[i] + other.data[i]
                return Sequence(self.n, sum)

            elif self.n > other.n:
                sum = [0] * len(self.data)
                i = 0
                while i < len(other.coefs):
                    sum[i] = self.data[i] + other.data[i]
                    i += 1
                for i in range(len(other.data), len(self.data)):
                    sum[i] = self.data[i]
                return Sequence(self.n, sum)
            elif self.n < other.n:
                sum = [0] * len(other.data)
                i = 0
                while i < len(self.data):
                    sum[i] = self.data[i] + other.data[i]
                    i += 1
                for i in range(len(self.data), len(other.data)):
                    sum[i] = other.data[i]
                return Sequence(other.n, sum)
    def Arithmetic(self):
        reszta = self.data[1] - self.data[0]
        for i in range(1, self.n-1):
            p = self.data[i+1] - self.data[i]
            if p == reszta:
                continue
            else:
                return False
        return True

    def Geometric(self):
        if self.data[0] != 0:
            iloraz = self.data[1] / self.data[0]
            for i in range(1, self.n):
                if self.data[i] != 0:
                    iloraz_posredni = self.data[i+1] / self.data[i]
                    if iloraz_posredni == iloraz:
                        continue
                    else:
                        return False
                elif iloraz != 0 and self.data[i] == 0 and self.data[i+1] !=0:
                    return False
                elif self.data[i] == 0 and self.data[i+1] == 0:
                    for j in range(i+1, self.n):
                        if self.data[j] == 0:
                            continue
                    return True
            return True
        if self.data[0] == 0 and self.data[1] !=0 and self.data[2] != 0:
            return False
        if self.data[0] == 0:
            for j in range(0, self.n):
                if self.data[j] == 0:
                    continue
                else:
                    return False
            return True


def main():
    S1 = Sequence(6, None)
    S2 = Sequence(8, [0,2,4,6,8,10,12,14])
    S_nowy = Sequence(6, [1, 3, 9, 27, 81, 235])
    S4 = Sequence(5, [0, 0, 0, 0, 0])
    print(S1.Lenght())
    print(S2.Lenght())
    print(S2.data)
    print(S1)
    print(S2)
    print(S2.__getitem__(3))
    print(S2.__getitem__(6))
    S1.__setitem__(5,8)
    print(S1)
    S3 = S1 + S_nowy
    print(S3)
    print(S1.Arithmetic())
    print(S2.Arithmetic())
    print(S4.Arithmetic())
    #print(S3.Arithmetic())
    print(S_nowy.Arithmetic())
    print(S4.Geometric())
    print(S1.Geometric())
    print(S2.Geometric())
    #print(S3.Geometric())
    print(S_nowy.Geometric())
if __name__ == "__main__":
    main()
