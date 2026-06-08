//
//  StartView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/6/1.
//

import SwiftUI

struct StartView: View {
    @Binding var hasStarted: Bool

    @AppStorage("userName") private var userName = ""
    @AppStorage("userDepartment") private var userDepartment = ""
    @AppStorage("userFavoriteFood") private var userFavoriteFood = ""

    @State private var inputName = ""
    @State private var inputDepartment = ""
    @State private var inputFavoriteFood = ""

    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea()

            ScrollView {
                VStack(spacing: 28) {
                    titleSection
                    formSection
                    buttonSection
                }
                .padding()
                .padding(.bottom, 36)
            }
        }
        .onAppear {
            inputName = userName
            inputDepartment = userDepartment
            inputFavoriteFood = userFavoriteFood
        }
    }

    private var titleSection: some View {
        VStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color.appCard)
                    .frame(width: 120, height: 120)
                    .overlay {
                        Circle()
                            .stroke(Color.appDivider, lineWidth: 1)
                    }
                    .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)

                Image(systemName: "fork.knife.circle.fill")
                    .font(.system(size: 58, weight: .semibold))
                    .foregroundStyle(Color.appSage)
            }

            VStack(spacing: 8) {
                Text("NTU Food Map")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.appPrimaryText)

                Text("找到今天最適合你的那一餐")
                    .font(.headline)
                    .foregroundStyle(Color.appSecondaryText)
            }
        }
        .padding(.top, 36)
    }

    private var formSection: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("建立你的個人資料")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

//            Text("這些資料可以讓首頁顯示更個人化的招呼，也方便之後做推薦功能。")
//                .font(.subheadline)
//                .foregroundStyle(Color.appSecondaryText)

            VStack(spacing: 14) {
                profileTextField(
                    title: "暱稱",
                    placeholder: "例如：宇桓",
                    text: $inputName,
                    systemImage: "person.fill"
                )

                profileTextField(
                    title: "系級",
                    placeholder: "例如：運管系大三",
                    text: $inputDepartment,
                    systemImage: "graduationcap.fill"
                )

                profileTextField(
                    title: "最常想吃的食物",
                    placeholder: "例如：咖哩、牛肉麵、甜點",
                    text: $inputFavoriteFood,
                    systemImage: "fork.knife"
                )
            }
        }
        .padding()
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 28))
        .overlay {
            RoundedRectangle(cornerRadius: 28)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)
    }

    private func profileTextField(
        title: String,
        placeholder: String,
        text: Binding<String>,
        systemImage: String
    ) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Label(title, systemImage: systemImage)
                .font(.headline)
                .foregroundStyle(Color.appPrimaryText)

            TextField(placeholder, text: text)
                .textFieldStyle(.plain)
                .foregroundStyle(Color.appPrimaryText)
                .padding(.horizontal, 16)
                .frame(height: 52)
                .background(Color.appCard)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.appDivider, lineWidth: 1)
                }
        }
    }

    private var buttonSection: some View {
        VStack(spacing: 14) {
            Button {
                saveProfileAndStart()
            } label: {
                Text("開始使用")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .buttonStyle(.borderedProminent)
            .tint(.appSage)

            Button {
                startWithoutProfile()
            } label: {
                Text("直接開始使用")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .buttonStyle(.bordered)
            .tint(.appSage)
        }
    }

    private func saveProfileAndStart() {
        userName = inputName.trimmingCharacters(in: .whitespacesAndNewlines)
        userDepartment = inputDepartment.trimmingCharacters(in: .whitespacesAndNewlines)
        userFavoriteFood = inputFavoriteFood.trimmingCharacters(in: .whitespacesAndNewlines)
        hasStarted = true
    }

    private func startWithoutProfile() {
        hasStarted = true
    }
}

#Preview {
    StartView(hasStarted: .constant(false))
}
