import SwiftUI
import Foundation

struct GuidelinesView: View {
    @State private var isLabExpanded = false
    @State private var isLibExpanded = false
    @State private var isCanExpanded = false
    @State private var isPayExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack{
                BackButton()
                Spacer()
                SearchField()
            }
            .padding(.vertical)
            Text("Guidelines")
                .font(.headline)
                .bold()
                .padding(.bottom, 30)
            VStack{
            VStack {
                HStack {
                    Text("iOS Lab")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        isLabExpanded.toggle()
                        
                    }) {
                        Image(systemName: isLabExpanded ? "chevron.down" : "chevron.right")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                
                if isLabExpanded {
                    VStack(alignment: .leading) {
                        Text("• Where your student ID card within the lab").padding(.top)
                        Divider().frame(width: 320, height: 2) .background(Color.gray .opacity(0.5))
                        Text("• Here is another guideline to follow in this premises.")
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.bottom)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                }
            }.padding(.bottom,10)
            
            
            VStack{
                VStack {
                    HStack {
                        Text("Library")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            isLibExpanded.toggle()
                            
                        }) {
                            Image(systemName: isLibExpanded ? "chevron.down" : "chevron.right")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal)
                    
                    if isLibExpanded {
                        VStack(alignment: .leading) {
                            Text("• Where your student ID card within the lab").padding(.top)
                            Divider().frame(width: 320, height: 2) .background(Color.gray .opacity(0.5))
                            Text("• Here is another guideline to follow in this premises.")
                        }
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.bottom)
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        
                    }
                }
            }.padding(.bottom,10)
            
            VStack{
                VStack {
                    HStack {
                        Text("Canteen")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            isCanExpanded.toggle()
                            
                        }) {
                            Image(systemName: isCanExpanded ? "chevron.down" : "chevron.right")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal)
                    
                    if isCanExpanded {
                        VStack(alignment: .leading) {
                            Text("• Where your student ID card within the lab").padding(.top)
                            Divider().frame(width: 320, height: 2) .background(Color.gray .opacity(0.5))
                            Text("• Here is another guideline to follow in this premises.")
                        }
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.bottom)
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        
                    }
                }
            }.padding(.bottom,10)
            
                VStack{
                    VStack {
                        HStack {
                            Text("Payment")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                isPayExpanded.toggle()
                                
                            }) {
                                Image(systemName: isPayExpanded ? "chevron.down" : "chevron.right")
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.horizontal)
                        
                        if isPayExpanded {
                            VStack(alignment: .leading) {
                                Text("• Where your student ID card within the lab").padding(.top)
                                Divider().frame(width: 320, height: 2) .background(Color.gray .opacity(0.5))
                                Text("• Here is another guideline to follow in this premises.")
                            }
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.bottom)
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            
                        }
                    }
                }.padding(.bottom,10)
                
            }.frame(width: 380)
            Spacer()
        }.padding()
    }
}

struct GuidelinesView_Previews: PreviewProvider {
    static var previews: some View {
        GuidelinesView()
    }
}
