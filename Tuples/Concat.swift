//
//  Concat.swift
//  Tuples
//
//  Created by Christian Otkjær on 04/03/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: - 2

public func + <T1, T2, T3>(lhs: T1, rhs: (T2, T3)) -> (T1, T2, T3)
{
    return (lhs, rhs.0, rhs.1)
}

public func + <T1, T2, T3>(lhs: (T1, T2), rhs: T3) -> (T1, T2, T3)
{
    return (lhs.0, lhs.1, rhs)
}

public func + <T1, T2, T3, T4>(lhs: (T1, T2), rhs: (T3, T4)) -> (T1, T2, T3, T4)
{
    return (lhs.0, lhs.1, rhs.0, rhs.1)
}

// MARK: - 3

public func + <T1, T2, T3, T4>(lhs: T1, rhs: (T2, T3, T4)) -> (T1, T2, T3, T4)
{
    return (lhs, rhs.0, rhs.1, rhs.2)
}

public func + <T1, T2, T3, T4>(lhs: (T1, T2, T3), rhs: T4) -> (T1, T2, T3, T4)
{
    return (lhs.0, lhs.1, lhs.2, rhs)
}

public func + <T1, T2, T3, T4, T5>(lhs: (T1, T2), rhs: (T3, T4, T5)) -> (T1, T2, T3, T4, T5)
{
    return (lhs.0, lhs.1, rhs.0, rhs.1, rhs.2)
}

public func + <T1, T2, T3, T4, T5>(lhs: (T1, T2, T3), rhs: (T4, T5)) -> (T1, T2, T3, T4, T5)
{
    return (lhs.0, lhs.1, lhs.2, rhs.0, rhs.1)
}

public func + <T1, T2, T3, T4, T5, T6>(lhs: (T1, T2, T3), rhs: (T4, T5, T6)) -> (T1, T2, T3, T4, T5, T6)
{
    return (lhs.0, lhs.1, lhs.2, rhs.0, rhs.1, rhs.2)
}