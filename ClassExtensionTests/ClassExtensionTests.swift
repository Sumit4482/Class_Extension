//
//  ClassExtensionTests.swift
//  ClassExtensionTests
//
//  Created by E5000855 on 27/06/24.
//

import XCTest
@testable import ClassExtension

final class ClassExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testCircleAreaWithPositiveRadius() throws {
            let radius = 5.0
            let circle = Circle(radius: radius)
            let area = circle.area
            XCTAssertEqual(area, 78.54, accuracy: 0.01, "Area calculation is incorrect for positive radius")
        }

        func testCircleAreaWithZeroRadius() throws {
            let radius = 0.0
            let circle = Circle(radius: radius)
            let area = circle.area
            XCTAssertEqual(area, 0.0, "Area should be 0 for zero radius")
        }

        func testCircleAreaWithNegativeRadius() throws {
            let radius = -5.0
            let circle = Circle(radius: radius)
            let area = circle.area
            XCTAssertEqual(area, 78.54, accuracy: 0.01, "Area calculation is incorrect for negative radius")
        }

        func testInvalidInput() throws {
            let radiusText = "abc"
            let radius = Double(radiusText)
            XCTAssertNil(radius, "Conversion from string to Double should fail for non-numeric input")
        }

        func testPerformanceExample() throws {
            self.measure {
                let radius = 5.0
                let circle = Circle(radius: radius)
                _ = circle.area
            }
        }
    
}
