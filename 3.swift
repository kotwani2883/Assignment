var flag: Bool = true

struct Details{
    var name:String
    var age:Int
    var address:String
    var roll:Int
    var courses:String
}
var student=[Details]()
func AddUserdetails(){
    print("Enter the Full Name of the student")
    let fullName=readLine()!
    print("Enter the Age of the student")
    var Age:Int?
    Age=Int(readLine()!)
    print("Enter the Address of the student")
    let Address=readLine()!
    print("Enter the Address of the Student ")
    var RollNumber:Int?
    RollNumber=Int(readLine()!)
    print("Enter atleast 4 subjects out of A,B,C,D,E,F")
    let subjects = readLine()!
  
    let stud=Details(name:fullName,age:Age!,address:Address,roll:RollNumber!,courses:subjects)
    student.append(stud)
    

}
repeat{
    var option:Int?
    option = Int(readLine()!)
   switch option {
case 1:
   AddUserdetails()
case 5:
   flag=false
default:
print("YES")
}
}while(flag);
