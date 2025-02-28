import Foundation
import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var starttime: String
    var endtime: String
}

struct AddTaskBtn: View {
    @State private var date = Date()
    @State private var startTime = Date()
    @State private var endTime = Date()
    @State private var items = [Item]()
    @State private var showTaskForm = false
    @State private var newItemName = ""
    @State private var newItemDescription = ""

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }()

    var body: some View {
        VStack {
            HStack{
                Text("Schedule")
                    .font(.title2)
                    .bold()
                Spacer()
                DatePicker(" ", selection: $date, displayedComponents: [.date])
            }
            .padding(.horizontal, 10)
            
            Divider()
            
            List(self.items) { item in
                VStack(alignment: .leading) {
                    HStack{
                        Text("Start Time:").font(.caption)
                        Text(item.starttime).font(.caption)
                        Text("End Time:").font(.caption)
                        Text(item.endtime).font(.caption)
                    }
                    Divider()
                    Text(item.name)
                        .font(.headline)
                    Text(item.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
         
            if showTaskForm {
                VStack(spacing: 10) {
                    Text("Add a task")
                        .font(.title2)
                        .bold()

                    Divider()

                    HStack{
                        Text("Set Time Range:").font(.system(size: 18).weight(.semibold))
                        Spacer()
                        HStack{
                            DatePicker(" ", selection: $startTime, displayedComponents: [.hourAndMinute])
                            Text(":")
                            DatePicker(" ", selection: $endTime, displayedComponents: [.hourAndMinute])
                        }
                    }
                    .frame(width: 300)
                    .padding(10)

                    TextField("Title", text: $newItemName)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1))
                        .padding(.horizontal)
                    
                    ZStack(alignment: .topLeading) {
                        TextEditor(text: $newItemDescription)
                            .frame(height: 100)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 1))
                            .padding(.horizontal)

                        if newItemDescription.isEmpty {
                            Text("Description")
                                .foregroundColor(.gray.opacity(0.5))
                                .padding(.top, 18)
                                .padding(.leading, 28)
                        }
                    }
                    
                    HStack {
                        Button("Add Task") {
                            if !newItemName.isEmpty {
                                let startString = dateFormatter.string(from: startTime)
                                let endString = dateFormatter.string(from: endTime)

                                let newItem = Item(name: newItemName, description: newItemDescription, starttime: startString, endtime: endString)
                                items.append(newItem)
                                
                                newItemName = ""
                                newItemDescription = ""
                                startTime = Date()
                                endTime = Date()
                                showTaskForm = false
                            }
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                        
                    }
                    .padding(.horizontal)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 5))
                .padding(.vertical, -50)
                .padding(.horizontal, 20)
            }

            HStack {
                Spacer()
                Button(action: {
                    showTaskForm.toggle()
                }) {
                    Image(systemName: showTaskForm ? "plus" : "plus")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 3)
                }
                .padding()
            }
        }
    }
}

struct AddTaskBtn_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskBtn()
    }
}
