////
////  ContentView.swift
////  Mine_Project2
////
////  Created by Rand Alhassoun on 07/12/2022.
////
//
//import SwiftUI
//
//struct ContentView: View {
////    var body: some View {
////        Text("x, world!")
////            .padding()
////    }
//    var body: some View {
//      NavigationView {
//         // Text("rand")
//        List {
//          ForEach(0..<25, id: \.self, content: { i in
//            NavigationLink("(\(i)) Hello, Rand!", destination: EmptyView())
//          })
//        }
//        .navigationBarTitle("Bar Title")
//      }
//      .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
//      , tintColor: .white)
//
//      //  .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//    }
//
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//=====-==========================================
//
//  ContentView.swift
//  ICloudSession
//
//  Created by Shahad Bagarish on 07/12/2022.
//

//
//  ContentView.swift
//  ICloudSession
//
//  Created by Shahad Bagarish on 07/12/2022.
//


import SwiftUI
import CloudKit


//View
struct ContentView: View {

    @State var profiles : [Learner] = []
    var body: some View {
        NavigationView{
            List{
                ForEach(profiles) { learner  in
                    HStack(spacing: 2){
                        Image("avatar\(Int.random(in: 1..<7))")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                            .padding(.vertical)
                            .padding(.horizontal, 2)
                        
                        VStack(alignment: .leading, spacing:6){
                            Text("\(learner.UserName) \(learner.Email)")
                                .font(.title3)
                                .fontWeight(.semibold)

                            Text("\(learner.password)")
                            Text("\(learner.passwordConfirm) years old")

                        }
                        .padding(6)
                    }
                }
            }
            .listStyle(.plain)
            .onAppear{
                fetchLearner()
            }
            .navigationTitle("Learners")
        }
    }
    
    //View Model
    func fetchLearner(){
        
        let container = CKContainer(identifier: "iCloud.com.exame.Mine-Project2")
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Learner", predicate: predicate)
        
        let operations = CKQueryOperation(query: query)
        operations.recordMatchedBlock = {  recordId, result in
            
            switch result {
            case .success( let records):
                let Learner = Learner(record: records)
                self.profiles.append(Learner)
            case .failure( let error):
                print(error.localizedDescription)
            }
            
        }
        
        container.publicCloudDatabase.add(operations)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Model
struct Learner: Identifiable {
    
    let id: CKRecord.ID
    let Email: String
    let UserName : String
    let password : String
    let passwordConfirm: String
    
   
    init(record:CKRecord) {
        self.id = record.recordID
        self.Email = record["Email"] as? String ?? "N/A"
        self.UserName = record["UserName"]  as? String ?? "N/A"
        self.password = record["password"] as? String ?? "N/A"
        self.passwordConfirm = record["passwordConfirm"] as? String ?? "N/A"
    }
    
}

//
//let names: [String] = ["Nada Al Qahtani",
//                       "Dalal Al Harbi",
//                       "Shaden Al Otaibi",
//                       "Sara Al Shehri",
//                       "Reema Ahmed",
//                       "Areej Al Rashid",
//                       "Sara Mohammed"]
//
//let majors: [String] = ["Computer Science",
//                        "Physics",
//                        "Computer Science",
//                        "Chemistry",
//                        "Biology",
//                        "Computer Science",
//                        "Artificial Intelligence"
//]
