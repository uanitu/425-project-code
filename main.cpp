#include <iostream>
#include <vector>

using namespace std;
using std::vector;

class Application {
    public:

    int studentNum;
    string fName;
    string lName;
    string phoneNum;
    string email;
    int zip;
    string dob;
    bool isVerified;

    vector <Application> applications;

    Application(
        int a,
        string b,
        string c,
        string d,
        string e,
        int f,
        string g,
        bool h) {

        studentNum = a;
        fName = b;
        lName = c;
        phoneNum = d;
        email = e;
        zip = f;
        dob = g;
        isVerified = h;
    }

    bool verifyApplicant(Application application){

        return true;

    }
};

class Student {
    public:

    int studentNum;
    string fName;
    string lName;
    string phoneNum;
    string email;
    int zip;
    string dob;
    char gender;
    string aStatus;
    float cGPA;
    float lsGPA;
    int numCreditHours;
    bool isEligible;
    int numVotes;

    Student(
        int a,
        string b,
        string c,
        string d,
        string e,
        int f,
        string g,
        char h,
        string i,
        float j,
        float k,
        int l,
        bool m,
        int n) {

        studentNum = a;
        fName = b;
        lName = c;
        phoneNum = d;
        email = e;
        zip = f;
        dob = g;
        gender = h;
        aStatus = i;
        cGPA = j;
        lsGPA = k;
        numCreditHours = l;
        isEligible = m;
        numVotes = n;

    }

};

class Committee {
    public:

    vector <Student> students;
    vector <Student> rejectedStudenta;

    Committee(vector <Student>& studentsList){

        students = studentsList;

    }

    void addStudent(Student student){

        students.push_back(student);
    }

    int getAge(Student student){

        string dob = student.dob;

        string birthYear;

        for(int i = 4;i<dob.length();i++){

            birthYear = birthYear + dob[i];
        }

        return 2022 - stoi(birthYear);;
    }

    bool checkGPA(Student student){

        if(student.cGPA < 3.2){
            return false;
        }

        return true;
        
    }

    bool checkAge(Student student){

        int age = getAge(student);

        if(age >= 23){
            return false;
        }

        return true;
    }

    bool checkCredits(Student student){

        if(student.numCreditHours < 12){
            return false;
        }

        return true;
        
    }

    void checkEligibility(Student student){


        if(checkGPA(student) == true && 
           checkAge(student) == true && 
           checkCredits(student) == true){student.isEligible = true;}

        else{

            student.isEligible = false;
        }


        cout << student.isEligible << endl;
    }

    void doEligibilityCheck(){

        //loop through students and call eligibility check on each record

        for(int i = 0; i < students.size(); i++){

          checkEligibility(students[i]);
        }

    }

    void printStudentInfo(int studentNum){

        for(int i = 0; i < students.size(); i++){

            if(studentNum == students[i].studentNum){
                cout << students[i].studentNum << " ";
                cout << students[i].fName << " ";
                cout << students[i].lName << " ";
                cout << students[i].phoneNum << " ";
                cout << students[i].email << " ";
                cout << students[i].zip << " ";
                cout << students[i].dob << " ";
                cout << students[i].gender << " ";
                cout << students[i].aStatus << " ";
                cout << students[i].cGPA << " ";
                cout << students[i].lsGPA << " ";
                cout << students[i].numCreditHours << endl;

                break;
            }
            

        }
    }

    void printAllStudents(){


        for(int i = 0; i < students.size(); i++){

            cout << students[i].studentNum << " ";
            cout << students[i].fName << " ";
            cout << students[i].lName << " ";
            cout << students[i].phoneNum << " ";
            cout << students[i].email << " ";
            cout << students[i].zip << " ";
            cout << students[i].dob << " ";
            cout << students[i].gender << " ";
            cout << students[i].aStatus << " ";
            cout << students[i].cGPA << " ";
            cout << students[i].lsGPA << " ";
            cout << students[i].isEligible << " ";
            cout << students[i].numCreditHours << endl;

        }
    }

    void sendRejectionEmail(){

        //send a rejection email to all students in the rejectedStudents vector
    }

    void sendAcceptanceEmail(){

        //send acceptance email to the awardee
    }

    void removeIneligible(){

        //Create a loop that will iterate through the students arraylist and delete every record where isEligible is false.

    }

    void sortByCGPA(){

    }

    void trimByCGPA(){

    }

    void sortByLSGPA(){

    }

    void trimByLSGPA(){

    }

    void sortJuniors(){

    }

    void trimNonJuniors(){

    }

    void sortFemale(){

    }

    void trimMaleStudents(){

    }

    void castVote(int studentNum){

    }

    void sortByVotes(){

    }

    void determineAwardee(){

    }

};

int main() {

    Student a(
        1, 
        "jack", 
        "green", 
        "734568345", 
        "jack@umich.edu", 
        48170, 
        "08272000", 
        'm', 
        "junior", 
        3.5, 
        3.4, 
        15, 
        NULL, 
        0);

    Student b(
        2, 
        "jill", 
        "jones", 
        "734568345", 
        "jill@umich.edu", 
        48170, 
        "123456", 
        'f', 
        "junior", 
        3.2, 
        3.8, 
        12, 
        NULL, 
        0);

    Student c(
        3, 
        "pete", 
        "simpson", 
        "734568345", 
        "pete@umich.edu", 
        48170, 
        "123456", 
        'm', 
        "junior", 
        3.0, 
        3.0, 
        10, 
        NULL, 
        0);

    vector <Student> students;

    Committee committee(students);

    committee.addStudent(a);
    committee.addStudent(b);
    committee.addStudent(c);

    //committee.doEligibilityCheck();
    
    committee.checkEligibility(a);

    committee.printAllStudents();
    


    return 0;
}