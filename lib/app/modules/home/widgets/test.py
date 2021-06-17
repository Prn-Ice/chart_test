import bisect
import math


def BestTick(largest, mostticks):
    minimum = largest / mostticks
    magnitude = 10 ** math.floor(math.log(minimum, 10))
    residual = minimum / magnitude
    if residual > 5:
        tick = 10 * magnitude
    elif residual > 2:
        tick = 5 * magnitude
    elif residual > 1:
        tick = 2 * magnitude
    else:
        tick = magnitude
    return tick


BestTick(40405, 10)


def BestTick2(largest, mostticks):
    minimum = largest / mostticks
    magnitude = 10 ** math.floor(math.log(minimum, 10))
    residual = minimum / magnitude
    # this table must begin with 1 and end with 10
    table = [1, 1.5, 2, 3, 5, 7, 10]
    tick = table[bisect.bisect_right(table, residual)] if residual < 10 else 10
    return tick * magnitude


def myManAlgorithm(max, min):
    range = max - min
    exponent = int(math.log(range))
    magnitude = pow(10, exponent)
    value_per_division = magnitude / 10
    return magnitude


def seriesCalc(max, min):
    n = (max/(84*167)) - ((2*min)/167)
    return n


def sequenceCalc(max, min):
    range = max - min
    return ((range) * (10 ** math.log(range))) /167
