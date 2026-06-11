//
//  OnboaridngEventItem.swift
//  FeatureKit
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import SwiftUI
import Extensions

private extension OnboardingEventItem {
    enum Constant {
        static let titleFont = Font.JetBrainsMono.regular(12)
        static let titleColor = Color(hex: "#E8E7E3").opacity(0.34)
        static let cornerRadius = 4.0
        static let strokeWidth = 1.0
    }
}

public struct OnboardingEventItem: View {
    let events: [OnboardingEventModel]
    let selectedEvent: OnboardingEventModel?
    
    public var body: some View {
        VStack(spacing: 0) {
            tableTitleRow
                .padding()
            ForEach(events, id: \.self) { event in
                OnboardingEventRow(event: event, isEventSelected: event == selectedEvent)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: Constant.cornerRadius))
        .overlay {
            RoundedRectangle(cornerRadius: Constant.cornerRadius)
                .stroke(Constant.titleColor, lineWidth: Constant.strokeWidth)
        }
    }
}

//MARK: - Views
private extension OnboardingEventItem {
    var tableTitleRow: some View {
        HStack(spacing: 16) {
            Text("APPLE CALENDAR - \(Date().formattedUppercaseAbbreviatedDate().uppercased())")
            
            Spacer()
            
            Text("\(events.count) EVENTS")
        }
        .font(Constant.titleFont)
        .foregroundColor(Constant.titleColor)
    }
}


//MARK: - EventRow
private extension OnboardingEventRow {
    enum Constant {
        static let timeLabelFont = Font.JetBrainsMono.regular(14)
        static let titleLabelFont = Font.Inter.Pt18.regular(16)
        static let selectedTextForegroundColor = Color(hex: "#E8E7E3")
        static let unselectedTextForegroundColor = Color(hex: "#E8E7E3").opacity(0.56)
        static let selectedDividerWidth = 2.0
        static let rowMaxHeight = 52.0
        static let selectedBackgroundColor = Color(hex: "#E8E7E3").opacity(0.1)
        static let topDividerColor = Color(hex: "#E8E7E3").opacity(0.2)
        static let topDividerHeight = 1.0
    }
}

struct OnboardingEventRow: View {
    let event: OnboardingEventModel
    let isEventSelected: Bool
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                timeLabel
                
                titleLabel
                
                Spacer()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: Constant.rowMaxHeight)
        .background(isEventSelected ? Constant.selectedBackgroundColor : .clear)
        .overlay(alignment: .top) {
            topDivider
        }
        .overlay(alignment: .leading, content: {
            if isEventSelected {
                selectedDivider
            }
        })
    }
}

//MARK: - Views
private extension OnboardingEventRow {
    var topDivider: some View {
        Rectangle()
            .fill(Constant.topDividerColor)
            .frame(height: Constant.topDividerHeight)
    }
    var selectedDivider: some View {
        Rectangle()
            .fill(Constant.selectedTextForegroundColor)
            .frame(width: Constant.selectedDividerWidth)
    }
    var timeLabel: some View {
        Text(event.time)
            .font(Constant.timeLabelFont)
            .foregroundColor(
                isEventSelected ?
                Constant.selectedTextForegroundColor :
                Constant.unselectedTextForegroundColor
            )
    }
    
    var titleLabel: some View {
        Text(event.title)
            .font(Constant.titleLabelFont)
            .foregroundColor(
                isEventSelected ?
                Constant.selectedTextForegroundColor :
                Constant.unselectedTextForegroundColor
            )
    }
}

#Preview {
    OnboardingEventItem(events: .mock, selectedEvent: [OnboardingEventModel].mock[1])
}
