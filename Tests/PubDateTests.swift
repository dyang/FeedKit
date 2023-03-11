//
//  PubDateTests.swift
//  FeedKit iOS Tests
//
//  Created by Derek Yang on 2023-03-11.
//

import XCTest
import FeedKit

final class PubDateTests: BaseTestCase {

    func testIPhreaksFeed() {
        //Given
        let URL = fileURL("iphreaks", type: "xml")
        let parser = FeedParser(URL: URL)

        do {
            // When
            let feed = try parser.parse().get().rssFeed

            // Then
            XCTAssertNotNil(feed)
            XCTAssertEqual(feed?.items?[0].title, "The 3 Essentials for Successful Job Outcomes - BONUS")
            XCTAssertNotNil(feed?.items?[0].pubDate)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
