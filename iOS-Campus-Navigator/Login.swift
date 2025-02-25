import SwiftUI

struct LoginView: View{
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        Text("Campus Navigator").font(.system(size:64)).multilineTextAlignment(.center).fontWeight(.bold).padding(.top,100)
        VStack(spacing:10){
            
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.top, 20)
            Divider().frame(width: 320, height: 2) .background(Color.gray .opacity(0.5))
            HStack{
                
                TextField("Password", text: $password)
                Image(systemName: "eye.fill").foregroundColor(.gray)
                    
            }.padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
            HStack{
                HStack{
                    RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.3),lineWidth: 1).frame(width: 20, height: 20)
                    Text("Remember me") .foregroundColor(.gray)
                }.padding(.trailing,30)
                
                NavigationLink("Forgot Password?", destination: ContentView()) .foregroundColor(Color.blue)
            }.padding(.bottom,30)
            Button(action:{print("login success")}){Text("Login").foregroundColor(.white).fontWeight(.semibold).frame(width: 200, height: 35).background(Color.blue).cornerRadius(25).padding(.bottom,20).shadow(radius: 10)}
            
           }
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.3), lineWidth: 1)).background(Color.gray.opacity(0.1).cornerRadius(10))
        .padding(20)
        
        NavigationLink("Don't have an account?", destination: ContentView()) .foregroundColor(Color.blue).padding(.top,100)
    }
}
#Preview{
    LoginView()
}
