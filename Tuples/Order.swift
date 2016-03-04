//
//  Tuple.swift
//  Silverback
//
//  Created by Christian Otkjær on 14/12/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

import Foundation

public func ordered <T: Comparable> (tuple: (T, T)) -> (T, T)
{
    return Array(tuple: tuple).sort().tuple()!
}

public func ordered <T: Comparable> (tuple: (T, T, T)) -> (T, T, T)
{
    return Array(tuple: tuple).sort().tuple()!
}

public func ordered <T: Comparable> (tuple: (T, T, T, T)) -> (T, T, T, T)
{
    return Array(tuple: tuple).sort().tuple()!
}

public func ordered <T: Comparable> (tuple: (T, T, T, T, T)) -> (T, T, T, T, T)
{
    return Array(tuple: tuple).sort().tuple()!
}

public func ordered <T> (tuple: (T, T), @noescape isOrderedBefore: (T,T) -> Bool) -> (T, T)
{
    return Array(tuple: tuple).sort(isOrderedBefore).tuple()!
}

public func ordered <T> (tuple: (T, T, T), @noescape isOrderedBefore: (T,T) -> Bool) -> (T, T, T)
{
    return Array(tuple: tuple).sort(isOrderedBefore).tuple()!
}

public func ordered <T> (tuple: (T, T, T, T), @noescape isOrderedBefore: (T,T) -> Bool) -> (T, T, T, T)
{
    return Array(tuple: tuple).sort(isOrderedBefore).tuple()!
}

public func ordered <T> (tuple: (T, T, T, T, T), @noescape isOrderedBefore: (T,T) -> Bool) -> (T, T, T, T, T)
{
    return Array(tuple: tuple).sort(isOrderedBefore).tuple()!
}

