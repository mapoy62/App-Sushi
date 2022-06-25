//
//  menuView.swift
//  Mac
//
//  Created by user201842 on 11/19/21.
//

import SwiftUI
struct menuView: View {
        var body: some View {
        ZStack {
            Color(.cyan)
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack (alignment: .leading){
                    ExtractedView()

                    SearchBar()
                        .padding()
                
                    Text("Bebidas")
                        .font(.custom("mangat", size: 24))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 5) { index in
                                Cocteleria(image: Image("bb_\(index + 1)"), size: 210)
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    Text("Coctelería")
                        .font(.custom("mangat", size: 24))
                        .padding(.horizontal)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 8) { index in
                                Cocteleria(image: Image("b_\(index + 1)"), size: 210)
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                    Text("Rollos")
                        .font(.custom("mangat", size: 24))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 7) { index in
                                Cocteleria(image: Image("ss_\(index + 1)"), size: 210)
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }                }
            }
            
        }
    }
}

struct menuView_Previews: PreviewProvider {
    static var previews: some View {
        menuView()
    }
}


struct ExtractedView: View {
    var body: some View {
        Text("Nuestro menú")
        .font(.custom("mangat", size: 28))
        .padding()
    }
}
struct SearchBar: View {
    @ State private var search: String = ""
    var body: some View {
        HStack{
            TextField("", text: $search)
        }
        
    }
}
struct Cocteleria: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        VStack{
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            Text("Sake Chata")
                .font(.title3)
                .fontWeight(.bold)
            HStack(spacing: 2){
                ForEach(0 ..< 5) { item in
                    Image("stars")
                }
                Spacer()
                
                Text("$110")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            HStack(spacing: 2){
                Text("Descipción")
                    //.font(.title)
                    .fontWeight(.light)
            }
            HStack(spacing: 1){
                Button(action: {}, label: {
                    Text("Disponible")
                        //.frame(width: 100, height: 30)
                        //.cornerRadius(10.0)
                   Image("shop")
                    .resizable()
                    .frame(width: 30, height: 30)
                    })
                
            }
            .padding()
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}
