//
//  Equal.swift
//  Tuples
//
//  Created by Christian Otkjær on 04/03/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public func == <T1 : Equatable, T2: Equatable>(lhs: (T1, T2), rhs: (T1, T2)) -> Bool
{
    return lhs.0 == rhs.0 && lhs.1 == rhs.1
}

public func == <T1 : Equatable, T2: Equatable, T3: Equatable>(lhs: (T1, T2, T3), rhs: (T1, T2, T3)) -> Bool
{
    return lhs.0 == rhs.0 && lhs.1 == rhs.1 && lhs.2 == rhs.2
}

public func == <T1 : Equatable, T2: Equatable, T3: Equatable, T4: Equatable>(lhs: (T1, T2, T3, T4), rhs: (T1, T2, T3, T4)) -> Bool
{
    return lhs.0 == rhs.0 && lhs.1 == rhs.1 && lhs.2 == rhs.2 && lhs.3 == rhs.3
}

public func == <T1 : Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable>(lhs: (T1, T2, T3, T4, T5), rhs: (T1, T2, T3, T4, T5)) -> Bool
{
    return lhs.0 == rhs.0 && lhs.1 == rhs.1 && lhs.2 == rhs.2 && lhs.3 == rhs.3 && lhs.4 == rhs.4
}


public func != <T1 : Equatable, T2: Equatable>(lhs: (T1, T2), rhs: (T1, T2)) -> Bool
{
    return !(lhs == rhs)
}

public func != <T1 : Equatable, T2: Equatable, T3: Equatable>(lhs: (T1, T2, T3), rhs: (T1, T2, T3)) -> Bool
{
    return !(lhs == rhs)
}

public func != <T1 : Equatable, T2: Equatable, T3: Equatable, T4: Equatable>(lhs: (T1, T2, T3, T4), rhs: (T1, T2, T3, T4)) -> Bool
{
    return !(lhs == rhs)
}

public func != <T1 : Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable>(lhs: (T1, T2, T3, T4, T5), rhs: (T1, T2, T3, T4, T5)) -> Bool
{
    return !(lhs == rhs)
}
