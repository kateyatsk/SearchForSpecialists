//
//  ContentView.swift
//  SearchForSpecialists
//
//  Created by Екатерина Яцкевич on 20.04.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(.list)
                    .resizable()
                    .frame(width: 36, height: 36)
                Spacer()
                Image(.manRed)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
            }
            
            VStack(alignment: .leading, spacing: 14){
                Text("Hello User")
                    .font(.system(size: 16, weight: .semibold))

                Text("Find your specialist")
                    .font(.system(size: 32, weight: .bold))
            }.padding(.trailing, 70)
            
            HStack(spacing: 17) {
                CustomView(color: .blueBackground, name: "Place", image: "mapMark")
                CustomView(color: .turquoise, name: "Phone", image: "phone")
                CustomView(color: .lightOrange, name: "User", image: "user")
            }
           Spacer()
            HStack {
                Text("Top Doctor")
                    .font(.system(size: 25, weight: .bold))
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.turquoise)
            }
            Spacer()
            
            VStack(spacing: 31) {
                DoctorProfileView()
                DoctorProfileView()
            }
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
    }
}

#Preview {
    ContentView()
}

struct CustomView: View {
    var color: UIColor
    var name: String
    var image: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .frame(width: 42, height: 42)
            Text(name)
                .foregroundStyle(.white)
            
        }
        .frame(width: 112, height: 112)
        .background(Color(uiColor: color))
        .cornerRadius(22)
    }
}

struct DoctorProfileView: View {
    var body: some View {
        HStack {
            Image(.man)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 31))
                .frame(width: 82, height: 82)
            
            VStack(alignment: .leading) {
                Text("User Name")
                    .font(.system(size: 20, weight: .bold))
                Text("Lorem ipsum dolor sit amet")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14, weight: .semibold))
                HStack {
                    Image(.watch)
                        .resizable()
                        .frame(width: 19, height: 19)
                    Text("10.40 am - 2.40 pm")
                        .foregroundStyle(.gray)
                }
                HStack {
                    Text("$10.50")
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("Appointment")
                        .foregroundStyle(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.turquoise)
                        .cornerRadius(17)
                    
                }
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
    }
}
