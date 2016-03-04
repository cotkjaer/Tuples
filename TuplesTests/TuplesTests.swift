//
//  TuplesTests.swift
//  TuplesTests
//
//  Created by Christian Otkjær on 04/03/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Tuples

class TuplesTests: XCTestCase {

    func test_equal()
    {
        XCTAssert((1, 2.3) == (1, 2.3))
        XCTAssert((1, "a", 2.3) == (1, "a", 2.3))
        XCTAssert((1, "a", 2.3, true) == (1, "a", 2.3, true))

        
        XCTAssert((1, "a", 2.3, true) != (0, "a", 2.3, true))

        XCTAssert((1, "a", 2.3, true) != (1, "b", 2.3, true))

        XCTAssert((1, "a", 2.3, true) != (1, "a", 2.1, true))

        XCTAssert((1, "a", 2.3, true) != (1, "a", 2.3, false))

    }

    
    func test_concat()
    {
        let a = 1
        let b = 2.3
        let c = "c"
        let d = true
        let e = CGPointZero
        
        XCTAssert((a, b) + c == a + (b, c))
        
        XCTAssert((a, b) + (c, d) == (a, b, c, d))
        
        XCTAssert(a + (b, c, d) == (a, b, c, d))

        XCTAssert((a, b, c) + d == (a, b, c, d))
        
        XCTAssert((a, b) + (c, d, e) == (a, b, c, d, e))
    }
    
    func test_array()
    {
        guard let (a, b) : (Int, Int) = [1,2].tuple() else { XCTFail("could not form 2-tuple"); return }
    
        XCTAssertEqual(a, 1)
        XCTAssertEqual(b, 2)
        
        let t : (Int, Int)? = [1,2,3].tuple()
        
        XCTAssertNil(t)
    }
    
    func test_sort()
    {
        let t = (3, 2, 5, 4, 1)
        
        XCTAssert(ordered(t) == (1, 2, 3, 4, 5))
        
        XCTAssert(ordered(t, isOrderedBefore: >) == (5, 4, 3, 2, 1))
                
        let s = ordered(("bb", "a", "ccc")) { $0.characters.count > $1.characters.count }
        
        XCTAssert(s == ("ccc", "bb", "a"))
    }
}
