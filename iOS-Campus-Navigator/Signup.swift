import SwiftUI

struct SignupView: View{
    @State private var username: String = ""
    @State private var selectedBatch: String = "Batch"
    @State private var selectedBranch: String = ""
    @State private var isDropdownOpen = false

    
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
            
            VStack {
                Button(action: {isDropdownOpen.toggle()}) {
                    HStack {
                        Text(selectedBatch)
                            .foregroundColor(.black)
                            .padding()
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
                .overlay(
                    VStack {
                        if isDropdownOpen {
                            VStack(alignment: .leading) {
                                ForEach(batches, id: \.self) { batch in
                                    Button(action: {
                                        selectedBatch = batch
                                        isDropdownOpen = false
                                    }) {
                                        Text(batch)
                                            .padding()
                                            .foregroundColor(.black)
                                    }
                                    .frame(maxWidth: .infinity)
                                    .background(Color.gray.opacity(0.1))
                                }
                            }
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }
                    }
                )
            }
                        
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
