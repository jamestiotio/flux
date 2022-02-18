package universe


import "system"
import "date"
import "math"
import "strings"
import "regexp"
import "experimental/table"

// now is a function option whose default behaviour is to return the current system time
option now = system.time

// Transformation functions
builtin chandeMomentumOscillator : (<-tables: stream[A], n: int, ?columns: [string]) => stream[B]
    where
    A: Record,
    B: Record
builtin columns : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin count : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin covariance : (<-tables: stream[A], ?pearsonr: bool, ?valueDst: string, columns: [string]) => stream[B]
    where
    A: Record,
    B: Record
builtin cumulativeSum : (<-tables: stream[A], ?columns: [string]) => stream[B] where A: Record, B: Record
builtin derivative : (
        <-tables: stream[A],
        ?unit: duration,
        ?nonNegative: bool,
        ?columns: [string],
        ?timeColumn: string,
    ) => stream[B]
    where
    A: Record,
    B: Record

// die returns a fatal error from within a flux script
builtin die : (msg: string) => A
builtin difference : (
        <-tables: stream[T],
        ?nonNegative: bool,
        ?columns: [string],
        ?keepFirst: bool,
        ?initialZero: bool,
    ) => stream[R]
    where
    T: Record,
    R: Record

builtin distinct : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin drop : (<-tables: stream[A], ?fn: (column: string) => bool, ?columns: [string]) => stream[B]
    where
    A: Record,
    B: Record
builtin duplicate : (<-tables: stream[A], column: string, as: string) => stream[B] where A: Record, B: Record
builtin elapsed : (<-tables: stream[A], ?unit: duration, ?timeColumn: string, ?columnName: string) => stream[B]
    where
    A: Record,
    B: Record
builtin exponentialMovingAverage : (<-tables: stream[{B with _value: A}], n: int) => stream[{B with _value: A}]
    where
    A: Numeric
builtin fill : (<-tables: stream[A], ?column: string, ?value: B, ?usePrevious: bool) => stream[C]
    where
    A: Record,
    C: Record
builtin filter : (<-tables: stream[A], fn: (r: A) => bool, ?onEmpty: string) => stream[A] where A: Record
builtin first : (<-tables: stream[A], ?column: string) => stream[A] where A: Record
builtin group : (<-tables: stream[A], ?mode: string, ?columns: [string]) => stream[A] where A: Record
builtin histogram : (
        <-tables: stream[A],
        ?column: string,
        ?upperBoundColumn: string,
        ?countColumn: string,
        bins: [float],
        ?normalize: bool,
    ) => stream[B]
    where
    A: Record,
    B: Record

builtin histogramQuantile : (
        <-tables: stream[A],
        ?quantile: float,
        ?countColumn: string,
        ?upperBoundColumn: string,
        ?valueColumn: string,
        ?minValue: float,
    ) => stream[B]
    where
    A: Record,
    B: Record

builtin holtWinters : (
        <-tables: stream[A],
        n: int,
        interval: duration,
        ?withFit: bool,
        ?column: string,
        ?timeColumn: string,
        ?seasonality: int,
    ) => stream[B]
    where
    A: Record,
    B: Record

builtin hourSelection : (<-tables: stream[A], start: int, stop: int, ?timeColumn: string) => stream[A] where A: Record
builtin integral : (
        <-tables: stream[A],
        ?unit: duration,
        ?timeColumn: string,
        ?column: string,
        ?interpolate: string,
    ) => stream[B]
    where
    A: Record,
    B: Record

builtin join : (<-tables: A, ?method: string, ?on: [string]) => stream[B] where A: Record, B: Record
builtin kaufmansAMA : (<-tables: stream[A], n: int, ?column: string) => stream[B] where A: Record, B: Record
builtin keep : (<-tables: stream[A], ?columns: [string], ?fn: (column: string) => bool) => stream[B]
    where
    A: Record,
    B: Record
builtin keyValues : (<-tables: stream[A], ?keyColumns: [string]) => stream[{C with _key: string, _value: B}]
    where
    A: Record,
    C: Record
builtin keys : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin last : (<-tables: stream[A], ?column: string) => stream[A] where A: Record
builtin limit : (<-tables: stream[A], n: int, ?offset: int) => stream[A]
builtin map : (<-tables: stream[A], fn: (r: A) => B, ?mergeKey: bool) => stream[B]
builtin max : (<-tables: stream[A], ?column: string) => stream[A] where A: Record
builtin mean : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin min : (<-tables: stream[A], ?column: string) => stream[A] where A: Record
builtin mode : (<-tables: stream[A], ?column: string) => stream[{C with _value: B}] where A: Record, C: Record
builtin movingAverage : (<-tables: stream[{B with _value: A}], n: int) => stream[{B with _value: float}]
    where
    A: Numeric
builtin quantile : (
        <-tables: stream[A],
        ?column: string,
        q: float,
        ?compression: float,
        ?method: string,
    ) => stream[A]
    where
    A: Record

builtin pivot : (<-tables: stream[A], rowKey: [string], columnKey: [string], valueColumn: string) => stream[B]
    where
    A: Record,
    B: Record
builtin range : (
        <-tables: stream[{A with _time: time}],
        start: B,
        ?stop: C,
    ) => stream[{A with _time: time, _start: time, _stop: time}]

builtin reduce : (<-tables: stream[A], fn: (r: A, accumulator: B) => B, identity: B) => stream[C]
    where
    A: Record,
    B: Record,
    C: Record
builtin relativeStrengthIndex : (<-tables: stream[A], n: int, ?columns: [string]) => stream[B]
    where
    A: Record,
    B: Record
builtin rename : (<-tables: stream[A], ?fn: (column: string) => string, ?columns: B) => stream[C]
    where
    A: Record,
    B: Record,
    C: Record
builtin sample : (<-tables: stream[A], n: int, ?pos: int, ?column: string) => stream[A] where A: Record
builtin set : (<-tables: stream[A], key: string, value: string) => stream[A] where A: Record
builtin tail : (<-tables: stream[A], n: int, ?offset: int) => stream[A]
builtin timeShift : (<-tables: stream[A], duration: duration, ?columns: [string]) => stream[A]
builtin skew : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin spread : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin sort : (<-tables: stream[A], ?columns: [string], ?desc: bool) => stream[A] where A: Record
builtin stateTracking : (
        <-tables: stream[A],
        fn: (r: A) => bool,
        ?countColumn: string,
        ?durationColumn: string,
        ?durationUnit: duration,
        ?timeColumn: string,
    ) => stream[B]
    where
    A: Record,
    B: Record

builtin stddev : (<-tables: stream[A], ?column: string, ?mode: string) => stream[B] where A: Record, B: Record
builtin sum : (<-tables: stream[A], ?column: string) => stream[B] where A: Record, B: Record
builtin tripleExponentialDerivative : (<-tables: stream[{B with _value: A}], n: int) => stream[{B with _value: float}]
    where
    A: Numeric,
    B: Record
builtin union : (tables: [stream[A]]) => stream[A] where A: Record
builtin unique : (<-tables: stream[A], ?column: string) => stream[A] where A: Record

builtin _window : (
        <-tables: stream[A],
        every: duration,
        period: duration,
        offset: duration,
        location: {zone: string, offset: duration},
        timeColumn: string,
        startColumn: string,
        stopColumn: string,
        createEmpty: bool,
    ) => stream[B]
    where
    A: Record,
    B: Record

window = (
    tables=<-,
    every=0s,
    period=0s,
    offset=0s,
    location=location,
    timeColumn="_time",
    startColumn="_start",
    stopColumn="_stop",
    createEmpty=false,
) =>
    tables
        |> _window(
            every,
            period,
            offset,
            location,
            timeColumn,
            startColumn,
            stopColumn,
            createEmpty,
        )

builtin yield : (<-tables: stream[A], ?name: string) => stream[A] where A: Record

// stream/table index functions
builtin tableFind : (<-tables: stream[A], fn: (key: B) => bool) => stream[A] where A: Record, B: Record
builtin getColumn : (<-table: stream[A], column: string) => [B] where A: Record
builtin getRecord : (<-table: stream[A], idx: int) => A where A: Record
builtin findColumn : (<-tables: stream[A], fn: (key: B) => bool, column: string) => [C] where A: Record, B: Record
builtin findRecord : (<-tables: stream[A], fn: (key: B) => bool, idx: int) => A where A: Record, B: Record

// type conversion functions
builtin bool : (v: A) => bool
builtin bytes : (v: A) => bytes
builtin duration : (v: A) => duration
builtin float : (v: A) => float
builtin int : (v: A) => int
builtin string : (v: A) => string
builtin time : (v: A) => time
builtin uint : (v: A) => uint

// display returns the Flux literal representation of any value as a string.
//
// Basic types are converted directly to a string.
// Bytes types are represented as a string of lowercase hexadecimal characters prefixed with `0x`.
// Composite types (arrays, dictionaries, and records) are represented in a syntax similar
// to their equivalent Flux literal representation.
//
// Note the following about the resulting string representation:
// - It cannot always be parsed back into the original value.
// - It may span multiple lines.
// - It may change between Flux versions.
//
//`display()` differs from `string()` in that `display()` recursively converts values inside
// composite types to strings. `string()` does not operate on composite types.
//
//  ## Parameters
//  - v: Value to convert for display.
//
//  ## Examples
//
//  ### Display a value as part of a table
//
//  Use `array.from()` and `display()` to quickly observe any value.
//
//  ```no_run
//  import "array"
//
//  array.from(rows:[{
//      dict: display(v: ["a":1, "b": 2])
//      record: display(v:{x: 1, y: 2}),
//      array: display(v: [5,6,7])
//  > }])
//  ```
//
//  ### Display a record
//
//  ```no_run
//  x = {a: 1, b: 2, c: 3}
//  display(v: x)
//
//  // Returns {a: 1, b: 2, c: 3}
//  ```
//
//  ### Display an array
//
//  ```no_run
//  x = [1, 2, 3]
//  display(v: x)
//
//  // Returns [1, 2, 3]
//  ```
//
//  ### Display a dictionary
//
//  ```no_run
//  x = ["a": 1, "b": 2, "c": 3]
//  display(v: x)
//
//  // Returns [a: 1, b: 2, c: 3]
//  ```
//
//  ### Display bytes
//
//  ```no_run
//  x = bytes(v:"abc")
//  display(v: x)
//
//  // Returns 0x616263
//  ```
//
//  ### Display a composite value
//
//  ```no_run
//  x = {
//      bytes: bytes(v: "abc"),
//      string: "str",
//      array: [1,2,3],
//      dict: ["a": 1, "b": 2, "c": 3],
//  }
//  display(v: x)
//
//  // Returns
//  // {
//  //    array: [1, 2, 3],
//  //    bytes: 0x616263,
//  //    dict: [a: 1, b: 2, c: 3],
//  //    string: str
//  // }
//  ```
builtin display : (v: A) => string

// contains function
builtin contains : (value: A, set: [A]) => bool where A: Nullable

// other builtins
builtin inf : duration
builtin length : (<-arr: [A]) => int
builtin linearBins : (start: float, width: float, count: int, ?infinity: bool) => [float]
builtin logarithmicBins : (start: float, factor: float, count: int, ?infinity: bool) => [float]

// Time weighted average where values at the beginning and end of the range are linearly interpolated.
timeWeightedAvg = (tables=<-, unit) =>
    tables
        |> integral(unit: unit, interpolate: "linear")
        |> map(
            fn: (r) =>
                ({r with _value: r._value * float(v: uint(v: unit)) / float(v: int(v: r._stop) - int(v: r._start))}),
        )

// covariance function with automatic join
cov = (x, y, on, pearsonr=false) =>
    join(tables: {x: x, y: y}, on: on)
        |> covariance(pearsonr: pearsonr, columns: ["_value_x", "_value_y"])
pearsonr = (x, y, on) => cov(x: x, y: y, on: on, pearsonr: true)

_fillEmpty = (tables=<-, createEmpty) =>
    if createEmpty then
        tables
            |> table.fill()
    else
        tables

// aggregateWindow applies an aggregate function to fixed windows of time.
// The procedure is to window the data, perform an aggregate operation,
// and then undo the windowing to produce an output table for every input table.
aggregateWindow = (
    every,
    period=0s,
    fn,
    offset=0s,
    location=location,
    column="_value",
    timeSrc="_stop",
    timeDst="_time",
    createEmpty=true,
    tables=<-,
) =>
    tables
        |> window(
            every: every,
            period: period,
            offset: offset,
            location: location,
            createEmpty: createEmpty,
        )
        |> fn(column: column)
        |> _fillEmpty(createEmpty: createEmpty)
        |> duplicate(column: timeSrc, as: timeDst)
        |> window(every: inf, timeColumn: timeDst)

// Increase returns the total non-negative difference between values in a table.
// A main usage case is tracking changes in counter values which may wrap over time when they hit
// a threshold or are reset. In the case of a wrap/reset,
// we can assume that the absolute delta between two points will be at least their non-negative difference.
increase = (tables=<-, columns=["_value"]) =>
    tables
        |> difference(nonNegative: true, columns: columns, keepFirst: true, initialZero: true)
        |> cumulativeSum(columns: columns)

// median returns the 50th percentile.
median = (method="estimate_tdigest", compression=0.0, column="_value", tables=<-) =>
    tables
        |> quantile(q: 0.5, method: method, compression: compression, column: column)

// stateCount computes the number of consecutive records in a given state.
// The state is defined via the function fn. For each consecutive point for
// which the expression evaluates as true, the state count will be incremented
// When a point evaluates as false, the state count is reset.
//
// The state count will be added as an additional column to each record. If the
// expression evaluates as false, the value will be -1. If the expression
// generates an error during evaluation, the point is discarded, and does not
// affect the state count.
stateCount = (fn, column="stateCount", tables=<-) =>
    tables
        |> stateTracking(countColumn: column, fn: fn)

// stateDuration computes the duration of a given state.
// The state is defined via the function fn. For each consecutive point for
// which the expression evaluates as true, the state duration will be
// incremented by the duration between points. When a point evaluates as false,
// the state duration is reset.
//
// The state duration will be added as an additional column to each record. If the
// expression evaluates as false, the value will be -1. If the expression
// generates an error during evaluation, the point is discarded, and does not
// affect the state duration.
//
// Note that as the first point in the given state has no previous point, its
// state duration will be 0.
//
// The duration is represented as an integer in the units specified.
stateDuration = (
    fn,
    column="stateDuration",
    timeColumn="_time",
    unit=1s,
    tables=<-,
) =>
    tables
        |> stateTracking(durationColumn: column, timeColumn: timeColumn, fn: fn, durationUnit: unit)

// _sortLimit is a helper function, which sorts and limits a table.
_sortLimit = (n, desc, columns=["_value"], tables=<-) =>
    tables
        |> sort(columns: columns, desc: desc)
        |> limit(n: n)

// top sorts a table by columns and keeps only the top n records.
top = (n, columns=["_value"], tables=<-) =>
    tables
        |> _sortLimit(n: n, columns: columns, desc: true)

// top sorts a table by columns and keeps only the bottom n records.
bottom = (n, columns=["_value"], tables=<-) =>
    tables
        |> _sortLimit(n: n, columns: columns, desc: false)

// _highestOrLowest is a helper function, which reduces all groups into a single group by specific tags and a reducer function,
// then it selects the highest or lowest records based on the column and the _sortLimit function.
// The default reducer assumes no reducing needs to be performed.
_highestOrLowest = (
    n,
    _sortLimit,
    reducer,
    column="_value",
    groupColumns=[],
    tables=<-,
) =>
    tables
        |> group(columns: groupColumns)
        |> reducer()
        |> group(columns: [])
        |> _sortLimit(n: n, columns: [column])

// highestMax returns the top N records from all groups using the maximum of each group.
highestMax =
    (n, column="_value", groupColumns=[], tables=<-) =>
        tables
            |> _highestOrLowest(
                n: n,
                column: column,
                groupColumns: groupColumns,
                // TODO(nathanielc): Once max/min support selecting based on multiple columns change this to pass all columns.
                reducer: (tables=<-) => tables |> max(column: column),
                _sortLimit: top,
            )

// highestAverage returns the top N records from all groups using the average of each group.
highestAverage = (n, column="_value", groupColumns=[], tables=<-) =>
    tables
        |> _highestOrLowest(
            n: n,
            column: column,
            groupColumns: groupColumns,
            reducer: (tables=<-) => tables |> mean(column: column),
            _sortLimit: top,
        )

// highestCurrent returns the top N records from all groups using the last value of each group.
highestCurrent = (n, column="_value", groupColumns=[], tables=<-) =>
    tables
        |> _highestOrLowest(
            n: n,
            column: column,
            groupColumns: groupColumns,
            reducer: (tables=<-) => tables |> last(column: column),
            _sortLimit: top,
        )

// lowestMin returns the bottom N records from all groups using the minimum of each group.
lowestMin =
    (n, column="_value", groupColumns=[], tables=<-) =>
        tables
            |> _highestOrLowest(
                n: n,
                column: column,
                groupColumns: groupColumns,
                // TODO(nathanielc): Once max/min support selecting based on multiple columns change this to pass all columns.
                reducer: (tables=<-) => tables |> min(column: column),
                _sortLimit: bottom,
            )

// lowestAverage returns the bottom N records from all groups using the average of each group.
lowestAverage = (n, column="_value", groupColumns=[], tables=<-) =>
    tables
        |> _highestOrLowest(
            n: n,
            column: column,
            groupColumns: groupColumns,
            reducer: (tables=<-) => tables |> mean(column: column),
            _sortLimit: bottom,
        )

// lowestCurrent returns the bottom N records from all groups using the last value of each group.
lowestCurrent = (n, column="_value", groupColumns=[], tables=<-) =>
    tables
        |> _highestOrLowest(
            n: n,
            column: column,
            groupColumns: groupColumns,
            reducer: (tables=<-) => tables |> last(column: column),
            _sortLimit: bottom,
        )

// timedMovingAverage constructs a simple moving average over windows of 'period' duration
// eg: A 5 year moving average would be called as such:
//    movingAverage(1y, 5y)
timedMovingAverage = (every, period, column="_value", tables=<-) =>
    tables
        |> window(every: every, period: period)
        |> mean(column: column)
        |> duplicate(column: "_stop", as: "_time")
        |> window(every: inf)

// Double Exponential Moving Average computes the double exponential moving averages of the `_value` column.
// eg: A 5 point double exponential moving average would be called as such:
// from(bucket: "telegraf/autogen"):
//    |> range(start: -7d)
//    |> doubleEMA(n: 5)
doubleEMA = (n, tables=<-) =>
    tables
        |> exponentialMovingAverage(n: n)
        |> duplicate(column: "_value", as: "__ema")
        |> exponentialMovingAverage(n: n)
        |> map(fn: (r) => ({r with _value: 2.0 * r.__ema - r._value}))
        |> drop(columns: ["__ema"])

// Triple Exponential Moving Average computes the triple exponential moving averages of the `_value` column.
// eg: A 5 point triple exponential moving average would be called as such:
// from(bucket: "telegraf/autogen"):
//    |> range(start: -7d)
//    |> tripleEMA(n: 5)
tripleEMA = (n, tables=<-) =>
    tables
        |> exponentialMovingAverage(n: n)
        |> duplicate(column: "_value", as: "__ema1")
        |> exponentialMovingAverage(n: n)
        |> duplicate(column: "_value", as: "__ema2")
        |> exponentialMovingAverage(n: n)
        |> map(fn: (r) => ({r with _value: 3.0 * r.__ema1 - 3.0 * r.__ema2 + r._value}))
        |> drop(columns: ["__ema1", "__ema2"])

// truncateTimeColumn takes in a time column t and a Duration unit and truncates each value of t to the given unit via map
// Change from _time to timeColumn once Flux Issue 1122 is resolved
truncateTimeColumn = (timeColumn="_time", unit, tables=<-) =>
    tables
        |> map(fn: (r) => ({r with _time: date.truncate(t: r._time, unit: unit)}))

// kaufmansER computes Kaufman's Efficiency Ratios of the `_value` column
kaufmansER = (n, tables=<-) =>
    tables
        |> chandeMomentumOscillator(n: n)
        |> map(fn: (r) => ({r with _value: math.abs(x: r._value) / 100.0}))
toString = (tables=<-) => tables |> map(fn: (r) => ({r with _value: string(v: r._value)}))
toInt = (tables=<-) => tables |> map(fn: (r) => ({r with _value: int(v: r._value)}))
toUInt = (tables=<-) => tables |> map(fn: (r) => ({r with _value: uint(v: r._value)}))
toFloat = (tables=<-) => tables |> map(fn: (r) => ({r with _value: float(v: r._value)}))
toBool = (tables=<-) => tables |> map(fn: (r) => ({r with _value: bool(v: r._value)}))
toTime = (tables=<-) => tables |> map(fn: (r) => ({r with _value: time(v: r._value)}))

// today returns the now() timestamp truncated to the day unit
today = () => date.truncate(t: now(), unit: 1d)
