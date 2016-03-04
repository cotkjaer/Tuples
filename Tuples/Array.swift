//
//  Array.swift
//  Tuples
//
//  Created by Christian Otkjær on 04/03/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import Foundation

// MARK: - Init

extension Array
{
    public init(tuple : (Element, Element))
    {
        self.init(arrayLiteral: tuple.0, tuple.1)
    }

    public init(tuple : (Element, Element, Element))
    {
        self.init(arrayLiteral: tuple.0, tuple.1, tuple.2)
    }

    public init(tuple : (Element, Element, Element, Element))
    {
        self.init(arrayLiteral: tuple.0, tuple.1, tuple.2, tuple.3)
    }

    public init(tuple : (Element, Element, Element, Element, Element))
    {
        self.init(arrayLiteral: tuple.0, tuple.1, tuple.2, tuple.3, tuple.4)
    }
}

// MARK: -

extension Array
{
    func tuple() -> (Element)?
    {
        guard count == 1 else { return nil }
        
        return (self[0])
    }
    
    func tuple() -> (Element, Element)?
    {
        guard count == 2 else { return nil }
        
        return (self[0], self[1])
    }

    func tuple() -> (Element, Element, Element)?
    {
        guard count == 3 else { return nil }
        
        return (self[0], self[1], self[2])
    }
    
    func tuple() -> (Element, Element, Element, Element)?
    {
        guard count == 4 else { return nil }
        
        return (self[0], self[1], self[2], self[3])
    }

    func tuple() -> (Element, Element, Element, Element, Element)?
    {
        guard count == 5 else { return nil }
        
        return (self[0], self[1], self[2], self[3], self[4])
    }
}
