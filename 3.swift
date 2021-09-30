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
func  ShowUserDetails(){
    print("___________________________________________")
    print("Name  Roll-Number   Age  Address  Courses  ")
    print("___________________________________________")
    print("                                           ")
    for element in student {
        print(element.name)
        print(element.age)
        print(element.address)
        print(element.roll)
        print(element.courses)
    }
}
func deleteUserDetails(No:Int,studentArray: [Details])->Int{
     return studentArray.firstIndex { $0.roll == No }
}
repeat{
print("Student Management System : ")
print("To add New User to the data Structure press 1")
print("To display details of users press 2")
print("To delete the user press 3")
print("To save the details of user in phone press 4")
print("To exit out of the Program press 5")
    var option:Int?
    option = Int(readLine()!)
   switch option {
case 1:
   AddUserdetails()
case 2:
  ShowUserDetails()
case 3:
    var Number:Int? /*Roll Number is Always unique */
    Number=Int(readLine()!)
 deleteUserDetails(No:123,studentArray:[Details])
 
case 5:
   flag=false
default:
print("YES")
}
}while(flag);
