var flag: Bool = true
repeat {
let arguments = CommandLine.arguments
/* type=1 raw
   type=2 manufactured
   type=3 imported
   */
var type=0
var ans1:Float=0
var ans2:Float=0
for argument in arguments {

   if(argument=="raw"){
       type=1
   }
   else if (argument=="manufactured" ){
       type=2
        
   }
   else if  (argument=="imported"){
        type=3
        
   }
    print(argument)
    
    if let mFloat = Float(argument)  {
    ans1=Float(argument)!
    ans2=Float(argument)!
    }
    }
    // for type Raw
    if(type==1){
    ans1=ans1*(12.5)/100
    }
    // For Type Manufacture
    else if(type==2){
    ans1=ans1*(12.5)/100+2*(ans1+ans1*(12.5))/100
    }
    // For type Imported
    else{
    ans1=ans1*(10)/100;
    if(ans1<=100){
    ans1+=5;
    }
    else if(ans1<=200 && ans1>100){
    ans1+=10;
    }
    else{
    ans1+=(ans1*5)/100;
    }
    }
    var ans=ans1+ans2
    print(" Sales Text Liability Per Item:")
    print(ans1)
    print(" Final Prize of the Item is:")
    print(ans)
print("Do you want to enter details of any other item (y/n):")
if let k=readLine(){
 if (k == "n"){
    flag=false;
    }
}
}while (flag);
