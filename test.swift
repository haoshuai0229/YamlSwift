import Yaml

assert(Yaml.load("# comment line") == .Null, "A comment input should be null")

assert(Yaml.load("") == .Null, "empty input should be null")
assert(Yaml.load("null") == .Null, "null should be null")
assert(Yaml.load("Null") == .Null, "Null should be null")
assert(Yaml.load("NULL") == .Null, "NULL should be null")
assert(Yaml.load("~") == .Null, "~ should be null")
assert(Yaml.load("NuLL") != .Null, "NuLL should NOT be null")
assert(Yaml.load("null#") != .Null, "null# should NOT be null")
assert(Yaml.load("null#string") != .Null, "null#string should NOT be null")
assert(Yaml.load("null #comment") == .Null, "`null #comment` should be null")

assert(Yaml.load("true") == .Bool(true), "true should be true")
assert(Yaml.load("True") == .Bool(true), "True should be true")
assert(Yaml.load("TRUE") == .Bool(true), "TRUE should be true")
assert(Yaml.load("trUE") != .Bool(true), "trUE should NOT be true")
assert(Yaml.load("true#") != .Bool(true), "true# should NOT be true")
assert(Yaml.load("true#string") != .Bool(true), "true#string should NOT be true")
assert(Yaml.load("true #comment") == .Bool(true), "`true #comment` should be true")
assert(Yaml.load("true  #") == .Bool(true), "`true  #` should be true")
assert(Yaml.load("true  ") == .Bool(true), "`true  ` should be true")
// assert(Yaml.load("true\n") == .Bool(true), "`true\n` should be true")
// assert(Yaml.load("true \n") == .Bool(true), "`true \n` should be true")

assert(Yaml.load("false") == .Bool(false), "false should be false")
assert(Yaml.load("False") == .Bool(false), "False should be false")
assert(Yaml.load("FALSE") == .Bool(false), "FALSE should be false")
assert(Yaml.load("faLSE") != .Bool(false), "faLSE should NOT be false")
assert(Yaml.load("false#") != .Bool(false), "false# should NOT be false")
assert(Yaml.load("false#string") != .Bool(false), "false#string should NOT be false")
assert(Yaml.load("false #comment") == .Bool(false), "`false #comment` should be false")
assert(Yaml.load("false  #") == .Bool(false), "`false  #` should be false")
assert(Yaml.load("false  ") == .Bool(false), "`false  ` should be false")
// assert(Yaml.load("false\n") == .Bool(false), "`false\n` should be false")
// assert(Yaml.load("false \n") == .Bool(false), "`false \n` should be false")

assert(Yaml.load(".inf") == .Float(Float.infinity), ".inf should be +infinity")
assert(Yaml.load(".Inf") == .Float(Float.infinity), ".Inf should be +infinity")
assert(Yaml.load(".INF") == .Float(Float.infinity), ".INF should be +infinity")
assert(Yaml.load(".iNf") != .Float(Float.infinity), ".iNf should NOT be +infinity")
assert(Yaml.load(".inf#") != .Float(Float.infinity), ".inf# should NOT be +infinity")
assert(Yaml.load(".inf# string") != .Float(Float.infinity), "`.inf# string` should NOT be +infinity")
assert(Yaml.load(".inf # comment") == .Float(Float.infinity), "`.inf # comment` should be +infinity")
assert(Yaml.load(".inf .inf") != .Float(Float.infinity), "`.inf .inf` should NOT be +infinity")
assert(Yaml.load("+.inf # comment") == .Float(Float.infinity), "`+.inf # comment` should be +infinity")

assert(Yaml.load("-.inf") == .Float(-Float.infinity), "-.inf should be -infinity")
assert(Yaml.load("-.Inf") == .Float(-Float.infinity), "-.Inf should be -infinity")
assert(Yaml.load("-.INF") == .Float(-Float.infinity), "-.INF should be -infinity")
assert(Yaml.load("-.iNf") != .Float(-Float.infinity), "-.iNf should NOT be -infinity")
assert(Yaml.load("-.inf#") != .Float(-Float.infinity), "-.inf# should NOT be -infinity")
assert(Yaml.load("-.inf# string") != .Float(-Float.infinity), "`-.inf# string` should NOT be -infinity")
assert(Yaml.load("-.inf # comment") == .Float(-Float.infinity), "`-.inf # comment` should be -infinity")
assert(Yaml.load("-.inf -.inf") != .Float(-Float.infinity), "`-.inf .inf` should NOT be -infinity")

assert(Yaml.load(".nan") == .Float(Float.NaN), ".nan should be NaN")
assert(Yaml.load(".NaN") == .Float(Float.NaN), ".NaN should be NaN")
assert(Yaml.load(".NAN") == .Float(Float.NaN), ".NAN should be NaN")
assert(Yaml.load(".Nan") != .Float(Float.NaN), ".Nan should NOT be NaN")
assert(Yaml.load(".nan#") != .Float(Float.NaN), ".nan# should NOT be NaN")
assert(Yaml.load(".nan# string") != .Float(Float.NaN), "`.nan# string` should NOT be NaN")
assert(Yaml.load(".nan # comment") == .Float(Float.NaN), "`.nan # comment` should be NaN")
assert(Yaml.load(".nan .nan") != .Float(Float.NaN), "`.nan .nan` should NOT be NaN")

println("\n\nDone.")
