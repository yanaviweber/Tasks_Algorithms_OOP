/*
 Пусть это дз будет как контрольная где вы проверите свои знания за 16 уроков и на сколько вы ленивы тоже).В этот раз нужно применить всю мощь языка и красоту кода.Нельзя выполнять выборочно задания!Нужно выполнить все по порядку. Применяйте все что когда любо учили даже если этого нет в задании.Желаю всем успеха)!
p.s. Для ленивых нужно написать в коментах на каком пункте сдался!)

Для - того кто просто иногда делает дз :)

a).Найти информацию что такое наследование в Google, перефразировать эту информацию своими словами и вставить это в xcode в за коментрированом виде.
b).Сделать то же самое с понятием Инкапсуляция
c).И так же с понятием полиморфизм.

1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".

Если удалось пройти первый уровень, то второй для тех кто хочет все таки выучить swift :)

5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.

7. Вывести все это в обратном порядке(Google в помощь).

Для тех кто не просто учит программирование а хочет еще и работать.

8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).
9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
10. Объединить всех people и Марсианинов) в один массив.
11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод

Для тех кто дойдет до этого уровня будут достоин уважения!

12. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)
13. В одном цикле “for in” выводить People а потом Марсианина, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)

Кто пройдет этот уровень станет настоящим Джедаем и сможет открывать двери на работу с ноги!:)

14. Соединить Марсиан и People в одном массиве.
15. Используя нужный метод array отсортировать массив (как результат будет другой массив).
16. Сортировать так: сначала People, а потом Марсиане, люди отсортированы по имени, а Марсиане по марсианским кличкам.
17.Требует разобраться с сортировкой.
*/


public class Peoples {
    var name: String
    var height: Int
    var weight: Int
    var gender: String
    
    
    func saySkill() -> String {
        return ("Hello! I am parent class. I can speaking.")
    }
    
    init(name: String, height: Int, weight: Int, gender: String){
        self.name = name
        self.height = height
        self.weight = weight
        self.gender = gender
    }
    
}

// --- СТАРТ --- 2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.

class CookChief: Peoples {
    
// инициализация и передпределение свойств дочернего класса по стандартам наследования в Свифт
    override init(name: String, height: Int, weight: Int, gender: String) {
        super.init(name: name, height: height, weight: weight, gender: gender)
    }
    
// переопределение метода say в дочернем классе
    override func saySkill() -> (String) {
        // -------- 6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
        return ("Родитель говорит: \(super.saySkill()), я говорю: - I can tell you about cooking.")
    }
}
    
class Manager: Peoples {
    
// инициализация и передпределение свойств дочернего класса по стандартам наследования в Свифт
    override init(name: String, height: Int, weight: Int, gender: String) {
        super.init(name: name, height: height, weight: weight, gender: gender)
    }
// переопределение метода say в дочернем классе
    override func saySkill() -> String {
        // -------- 6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
        return ("Родитель говорит: \(super.saySkill()), я говорю: - I can tell you about human resource collaborating.")
    }
}
    
class Wrestler: Peoples {
// инициализация и передпределение свойств дочернего класса по стандартам наследования в Свифт
    override init(name: String, height: Int, weight: Int, gender: String) {
        super.init(name: name, height: height, weight: weight, gender: gender)
    }
// переопределение метода say в дочернем классе
    override func saySkill() -> String {
        // -------- 6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
        return ("Родитель говорит: \(super.saySkill()), я говорю: - I can tell you about sport and the training program for create good shape.")
    }
}
// --- КОНЕЦ --- 2

// --- СТАРТ --- 5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
class Painter: Peoples {
// добавление новых свойств в дочерний класс
    var experience: Int
    var city: String
    
// инициализация и передпределение свойств дочернего класса по стандартам наследования в Свифт. И расширение новыми свойствами которые только что добавлены
    init(name: String, height: Int, weight: Int, gender: String, experience: Int, city: String) {
        self.experience = experience
        self.city = city
        super.init(name: name, height: height, weight: weight, gender: gender)
    }
// переопределение метода say в дочернем классе
    override func saySkill() -> String {
        // -------- 6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
        return ("Родитель говорит: \(super.saySkill()), я говорю: - I can tell you about drawing.")
    }
}
// --- КОНЕЦ --- 5

// --- СТАРТ --- 3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.

// создание обьектов на основе дочерних и родительского класса
var myCookChief = CookChief(name: "Alex", height: 180, weight: 75, gender: "Male")
var myManager = Manager(name: "Tetjana", height: 170, weight: 50, gender: "Female")
var myWrestler = Wrestler(name: "Maxim", height: 190, weight: 80, gender: "Male")


var myPainter = Painter(name: "Sonia", height: 165, weight: 50, gender: "Female", experience: 5, city: "Kiev")
 
var myFirstTeam:[Peoples] = []

myFirstTeam.append(myCookChief)
myFirstTeam.append(myManager)
myFirstTeam.append(myWrestler)

myFirstTeam.append(myPainter)

// --- КОНЕЦ --- 3

// ---- СТАРТ --- 4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
for item in myFirstTeam{
    print("Имя: \(item.name),", "Рост: \(item.height),", "Вес: \(item.weight),", "Пол: \(item.gender),", "Речь: \(item.saySkill()),", "Опыт: \(myPainter.experience),", "Город проживания: \(myPainter.city).")
    print ("   ")
}

// --- КОНЕЦ --- 4


// --- СТАРТ --- 7. Вывести все это в обратном порядке(Google в помощь).
// в обратном порядке

print("-------- Show array myFirstTeam in the reverse order -----------")

for check in  (myFirstTeam).reversed(){
    print("Город проживания: \(myPainter.city),", "Опыт: \(myPainter.experience),", "Речь: \(check.saySkill()),", "Пол: \(check.gender),", "Вес: \(check.weight),", "Рост: \(check.height),", "Имя: \(check.name),")
    print ("   ")
}

// --- КОНЕЦ --- 7


// --- СТАРТ --- 8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).

// class Marsiianin

class Marsiianin {
    var fullname: String
    var hobby: String
    var appearance: String
    var planetID: Int
    var featureYearNumber: Int
    
    func saySkill() -> String {
        return ("Hello! I am from Space! I would like to be a friend for you.")
    }
    
    
    init (fullname: String, hobby: String, appearance: String, planetID: Int, featureYearNumber: Int){
        self.fullname = fullname
        self.hobby = hobby
        self.appearance = appearance
        self.planetID = planetID
        self.featureYearNumber = featureYearNumber
    }
}

// --- КОНЕЦ --- 8

// --- СТАРТ --- 9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".

// дочерний класс DeveloperMarsiianin от Marsiianin
class DeveloperMarsiianin: Marsiianin {
    override init(fullname: String, hobby: String, appearance: String, planetID: Int, featureYearNumber: Int) {
        super.init(fullname: fullname, hobby: hobby, appearance: appearance, planetID: planetID, featureYearNumber: featureYearNumber)
    }
    
    override func saySkill() -> String {
        return ("Hi, guys! Let'go to write code together!")
    }
}

// дочерний класс TesterMarsiianin от Marsiianin
class TesterMarsiianin: Marsiianin {
    override init(fullname: String, hobby: String, appearance: String, planetID: Int, featureYearNumber: Int) {
        super.init(fullname: fullname, hobby: hobby, appearance: appearance, planetID: planetID, featureYearNumber: featureYearNumber)
    }
    
    override func saySkill() -> String {
        return ("Hello! I can help to you in testing your code. I would like you write clean code without bugs and mistakes.")
    }
}

// создание трех обьектов типа Marsiianin, TesterMarsiianin, DeveloperMarsiianin
var myMarsianDeveloper = DeveloperMarsiianin(fullname: "Vasia Petrovich", hobby: "Computers games", appearance: "Slim", planetID: 1568903, featureYearNumber: 2167)
var myMarsianTester = TesterMarsiianin(fullname: "Linus Torvalds", hobby: "Cooking sweets", appearance: "Pretty", planetID: 388904, featureYearNumber: 2225)
var myMarsianLead = Marsiianin(fullname: "Steve Jobs", hobby: "Reading books", appearance: "In good shape", planetID: 85684744444, featureYearNumber: 2054)

// --- КОНЕЦ --- 9

// --- СТАРТ --- 10. Объединить всех people и Марсианинов) в один массив.

//создание нового массива объектов и заполнение его
var mySecondTeam:[AnyObject] = []

mySecondTeam.append(myMarsianLead)
mySecondTeam.append(myMarsianTester)
mySecondTeam.append(myMarsianDeveloper)
mySecondTeam.append(myManager)
mySecondTeam.append(myPainter)
mySecondTeam.append(myWrestler)
mySecondTeam.append(myCookChief)

// --- КОНЕЦ --- 10

// --- СТАРТ --- 11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
print("-------- Sorted new array with display object type before display properties and methods -----------")

for secondItem in mySecondTeam{

    if let tempVar = secondItem as? Peoples{
        print("Type: \(type(of: secondItem)),", "Name: \(String(describing: tempVar.name)),","Height: \(String(describing: tempVar.height)),", "Weight: \(String(describing: tempVar.weight)),","Gender: \(String(describing: tempVar.gender)),", "Speaking Skills: \(String(describing: tempVar.saySkill())),")
        print ("   ")
    } else {
        let tempVar = secondItem as? Marsiianin
        print("Type: \(type(of: secondItem)),","Fullname: \(String(describing: tempVar!.fullname)),", "\(String(describing: tempVar!.hobby))", "Appearance: \(String(describing: tempVar!.appearance)),", "Planet ID: \(String(describing: tempVar!.planetID)),", "Feature Year Number: \(String(describing: tempVar!.featureYearNumber)),", "Speaking Skills: \(String(describing: tempVar!.saySkill())),")
        print ("   ")
    }
}
// --- КОНЕЦ --- 11
