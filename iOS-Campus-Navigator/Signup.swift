import SwiftUI

struct SignupView: View{
    @State private var username: String = ""
    @State private var selecteBatch: String = ""
    @State private var selecteBranch: String = ""

    let batches = ["DSE", "HDSE", "DNE", "HDNE"]
    let branch = ["Colombo", "Galle", "Kurunagala"]
    
    var body: some View {
        Text("Create a new account").font(.system(size:24)).multilineTextAlignment(.center).fontWeight(.light).padding(.top,20).foregroundColor(Color.blue)
        VStack(spacing:10){
            
            TextField("Username", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 20)
            TextField("Student ID", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            HStack{
                Text("Batch")
                    .padding(.trailing,250)
                Picker("Batch",selection: $selecteBatch){
                    ForEach(batches, id: \.self){ batch in Text(batch).tag(batch)}
                }
            }
            .padding(8)
            .frame(width: 363, height: 45)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .foregroundColor(Color.gray.opacity(0.5))
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1))
            .padding(.horizontal)
            
            TextField("Branch", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 10)
                
            TextField("Email", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 10)
            TextField("Mobile", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 10)
            TextField("Password", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 10)
            TextField("Confirm Password", text: $username)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 10)
                .padding(.bottom,55)
            Button(action:{print("Sign in success")}){Text("Sign up").foregroundColor(.white).fontWeight(.semibold).font(.system(size: 24)).frame(width: 360, height: 45).background(Color.blue).cornerRadius(25).padding(.bottom,10).shadow(radius: 10)}
            
           }
        
    }
}
#Preview{
    SignupView()
}
