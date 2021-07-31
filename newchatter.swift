// Non AI Swift Chatbot
// Developed by Joonsung Kim
// Version: 0.0.2
// Development Started: July 30th 2021
// Latest version: July 31st 2021
// Refer to swiftchatter_log.txt for development log

// This project was originaly meant to be developed with Python
// However, due to limitations in functions
// and not much experience,
// the project has changed its development language to Swift


// Main APP

print("Non AI Swift Chatbot")
print("-- version 0.0.2 variant Swift")
print("-- developed by Joonsung Kim")
print("\n")
print("***************************************")
print("\n\n\n")

func sys(msg: String) {
    print("SWIFT SYSTEM:: \(msg)")
}

func err(msg: String, app: String) {
    print("ERROR_\(app):: \(msg)")
}

func getUserPre(qst: String) {
    sys(msg: qst)
    print("\(qst):: ")
    return readLine()
}

func getCmd() {
    print("\(fullname):: ")
    return readLine()
}

func detQuit(msg: String) {
    if msg == "quit" {
        main_init()
    }
}

sys("Debugging Mode?")
var debugging_pre = Int(getUserPre(msg: "ADMINISTRATOR"))
if debugging_pre = 0 {
    let dbg = "false"
}
else if debugging_pre = 1 {
    let dbg = "true"
}
else {
    let dbg = "error"
}

func dbg(msg: String) {
    if dbg == "false" {
        print("DEBUG:: \(msg)")
    }
}
var answer:String
var yeslistlen = yes_list.count
var nolistlen = no_list.count
func getYN() -> String {
    answer = readLine()
    repeat {
        if answer == yes_list[yeslistlen] {
            tempAns = "yes"
            return "yes"
            break
        }
        else {
            tempAns = "no"
            yeslistlen -= 1
        }
    } while yeslistlen > -1
    if tempAns == "no" {
        return "no"
    }
}

let yes_list = ["y", "Y", "Yes", "yes", "yeah", "sure", "yep", "yup", "ok", "okay", "k", "Okay" "dd", "ya"]
let no_list = ["n", "N", "No", "no", "nope", "not really", "Nope", "Not really", "nah", "Nah", "ss"]
let command_input_list = ["weather", "time", "calc", "help"]
let me_list = ["me", "i", "I", "Me", "I'll", "I'd", "I've", "I'm"]
let you_list = ["you", "You", "Chatbot", "chatbot", "thee", "thy", "tu", "you'd", "you've", "You'd", "You've", "You're", "you're", "your", "Your"]
let he_list = ["he", "his", "He", "His", "He's", "He've", "He'd", "she", "her", "She", "Her", "she's", "she've", "she'd", "they", "their", "They", "Their", "They're", "They've", "They'd"]
let be_list = ["am", "are", "is", "was", "were", "be", "been"]

func getName() -> String {
    sys(msg: "Hey there, what's your name?")
    var name = getUserPre(msg: "NAME")
    let name_list = name.components(seperatedBy: " ")
    namevar1 = name_list.count - 1
    melistlen = me_list.count - 1
    belistlen = be_list.count -1
    var tempName:String
    repeat {
        repeat {
            if name_list[namevar1] == me_list[melistlen] {
                melistlen -= 1
            }
            else {
                repeat {
                    if name_list[namevar1] == be_list[belistlen] {
                        belistlen -= 1
                        tempName = "error0001_name"
                    }
                    else {
                        tempName = name_list[namevar1]
                        break
                    } while belistlen > -1
                }
                belistlen = be_list.count -1
            }
        } while melistlen > -1
        melistlen = me_list.count
        namevar -= 1
    } while namevar1 > -1
    return tempName
}

var getYNt:String
var tempName = getName()
if (tempName != "error0001_name") {
    sys(msg: "Okay, is your name \(tempName)?")
    getYNt = getYN()
    if getYNt == "yes" {
        fullname = tempName
        sys(msg: "Good to know! I'll call you \(fullname) from now on.")
        getUserPre(qst: "Please confirm that this is your name")
        getYNt = getYN()
        if getYNt == "yes" {
            sys(msg: "Great!")
            sys(msg: "Please enjoy our services :-)")
            main_init()
        }
        else {
            getName()
        }
    }
    else {
        getName()
    }
else {
    sys(msg: "System code Error!!\nPlease contact system administrator.")
}

var command:String
var type:String
let greetings_list = ["Welcome, \(fullname)!", "Hi there, \(fullname)!", "Hiya!", "Type in a command below. :)"]

func main() {
    print("\n\n")
    let number_rand = Int.random(in: 0...3)
    sys(msg: "\(greetings_list[number_rand])")
    command = getCmd()
    command_list = command.components(seperatedBy " ")

    detType()
    detCmd()
}

func main_init() {
    repeat {
        main()
    } while 0 == 0
}

// let str = "gg"
// let arr = str.map { String($0) }
// print(arr)
/*
func detGrammar(arr: Array) {
    var arrvar:Int = arr.count - 1
    var melistvar:Int = me_list.count - 1
    repeat {
        repeat {
            if arr[arrvar] == me_list[melistvar] {
                var whodid:String = "you"
                var nextword:String = arr[arrvar+1]
                var nextword_arr:Array = nextword.map { String($0) }
                var nwc = nextword_arr.count
                if nextword_arr[nextword_arr.count - 2] == "e" && nextword_arr[nextword_arr.count - 1] == "d" {
                    var sentenceGrammar:String = "past"
                    var whatdid:String = nextword
                    sys(msg: "It seems like this is a PAST TENSE.")
                    sys(msg: "I understood that \(whodid) \(whatdid).")
                    sys(msg: "You are probably done \(nextword_arr[0])ing.")
                }
                else if nextword_arr[nwc -3] == "i" && nextword_arr[nwc - 2] == "n" && nextword_arr[nwc - 1] == "g" {
                    var sentenceGrammar:String = "pp"
                    var whatdoing:String = nextword
                    sys(msg: "It seems like this is a PRESENT PROGRESSIVE.")
                    sys(msg: "I understood that \(whodid) is \(whatdoing).")
                }
                var belistvar:Int = be_list.count - 1
                repeat {
                    if nextword == be_list[belistvar] {
                        // Start here
                    }
                    belistvar -= 1
                } while belistvar > -1
            }
            melistvar -= 1
        } while melistvar > -1
        melistvar = me_list.count - 1
        arrvar -= 1
    } while arrvar > -1
}
*/

func detType() {
    if command.hasSuffix(".") {
        type = "n"
        sys(msg: "Recieved NORMAL SENTENCE")
    }
    else if command.hasSuffix("?") {
        type = "q"
        sys(msg: "Recieved QUESTION")
    }
    else if command.hasSuffix("!") {
        type = "e"
        sys(msg: "Recieved EXCLAMATION")
    }
    else {
        type = "er"
        err(msg: "TypeErr (No such SENTENCE TYPE)", app: "detType()")
    }
}


func runCommand(cmd: String) {
    if cmd == "weather" {
        cmd_weather()
    }
    else if cmd == "time" {
        cmd_time()
    }
    else if cmd == "calc" || cmd == "calculator" {
        cmd_calc()
    }
    else if cmd == "help" {
        cmd_help()
    }
    else {
        err(msg: "InputErr (No such COMMAND)", app: "CMD")
    }
}

var commandinputlistvar = len(command_input_list) - 1
func detCmd() {
    var isCommand = 0
    var commandlistvar = len(command_list) - 1
    repeat {
        repeat {
            if command_list[commandlistvar] == command_input_list[commandinputlistvar] {
                sys(msg: "I believe that this is a COMMAND.")
                isCommand = 1
                runCommand(cmd: command_input_list[commandinputlistvar])
            }
            else {
                commandlistvar -= 1
            }
        } while commandlistvar > -1
        commandinputlistvar -= 1
    } while commandinputlistvar > -1

    if isCommand == 0 {
        err(msg: "Warning (No such COMMAND)", app: "detCMD")
    }
}


// Calculator APP
// function inside chatbot

func clc(msg: String) {
    print("CALC:: \(msg)")
}

func cmd_calc() {
    print("\n\n")
    print("Swift Calculator")
    print("-- version 0.0.1")
    print("-- developed by Joonsung Kim")
    print("\n")
    print("***************************************")
    print("\n\n\n")
    clc(msg: "What kind of calculation would you like to do?")
    print("\n  1. Addition (+)")
    print("  2. Subtraction (-)")
    print("  3. Multiplication (*)")
    print("  4. Division (/)")
    print("  99. Go back to main chatbot")
    print("\n")
    var typeCalc:String = getCmd()
    if typeCalc == "1" {
        calc_addition()
    }
    else if typeCalc == "2" {
        calc_subtraction()
    }
    else if typeCalc == "3" {
        calc_multiplication()
    }
    else if typeCalc == "4" {
        calc_division()
    }
    else if typeCalc == "99" {
        main_init()
    }
    else {
        err(msg: "TypeErr (No such option)", app: "CALC")
        cmd_calc()
    }
}

func calc_addition() -> String {
    clc(msg: "Enter addition expression below.")
    clc(msg: "Please do not contain spaces,")
    clc(msg: "and use the + sign in expressions.")
    clc(msg: "You can enter as many numbers as you'd like to.")
    clc(msg: "Example> 34+35, 19.314+308.3+119")
    clc(msg: "Type 'quit' to exit to main menu.")
    print("\n")
    var a_eq:String = getCmd()
    var a_eq_list = a_eq.components(seperatedBy "+")
    var aeqlistvar:Int = a_eq_list.count - 1
    var result: Float
    detQuit(msg: a_eq)
    repeat {
        if let floatValue = Float(a_eq_list[aeqlistvar]) {
            result += floatValue
        }
        else {
            err(msg: "TypeErr (Number Type is not valid)", app: "CALC")
            calc_addition()
        }
        aeqlistvar -= 1
    } while aeqlistvar > -1
    print("\n")
    return "ADD_ANSWER:: \(result)"
}

func calc_subtraction() -> String {
    clc(msg: "Enter subtraction expression below.")
    clc(msg: "Please do not contain spaces,")
    clc(msg: "and use the - sign in expressions.")
    clc(msg: "Please only enter two numbers.")
    clc(msg: "Example> 78-9, 95.12-38.3")
    clc(msg: "Type 'quit' to exit to main menu.")
    print("\n")
    var a_eq:String = getCmd()
    var a_eq_list = a_eq.components(seperatedBy "-")
    var result:Float
    detQuit()
    result = a_eq_list[0]
    result -= a_eq_list[1]
    print("\n")
    return "SUB_ANSWER:: \(result)"
}

func calc_multiplication() -> String {

    return "WARNING:: Sorry, but I'm still developing this feature!"
}

func calc_division() -> String {

    return "WARNING:: Sorry, but I'm still developing this feature!"
}