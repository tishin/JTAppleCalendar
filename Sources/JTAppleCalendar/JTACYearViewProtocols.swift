//
//  JTACYearViewProtocols.swift
//
//  Copyright (c) 2016-2020 JTAppleCalendar (https://github.com/patchthecode/JTAppleCalendar)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import UIKit

@MainActor
public protocol JTACYearViewDelegate: AnyObject {
    func calendar(_ calendar: JTACYearView, cellFor item: Any, at date: Date, indexPath: IndexPath) -> JTACMonthCell
    func calendar(_ calendar: JTACYearView,
                  monthView: JTACCellMonthView,
                  drawingFor segmentRect: CGRect,
                  with date: Date,
                  dateOwner: DateOwner,
                  monthIndex index: Int)
    func calendar(_ calendar: JTACYearView, sizeFor item: Any) -> CGSize
}

extension JTACYearViewDelegate {
    func calendar(_ calendar: JTACYearView,
                  monthView: JTACCellMonthView,
                  drawingFor segmentRect: CGRect,
                  with date: Date,
                  dateOwner: DateOwner,
                  monthIndex index: Int){}
    func calendar(_ calendar: JTACYearView, sizeFor item: Any) -> CGSize { return .zero }
}

@MainActor
public protocol JTACYearViewDataSource: AnyObject {
    func configureCalendar(_ calendar: JTACYearView) -> (configurationParameters: ConfigurationParameters, months: [Any])
}

