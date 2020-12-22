# String object
s = "Julia"
repeat(s, 3)

replace(s, "Ju" => "Py")

ss = "Hello, this is practicing Julia"

s_ss = split(ss, " ")

join([s, ss], "-")

findfirst("Is", ss)

# Regular expression
regex = r"J.*g"

typeof(regex)
m = match(regex, "Hello, JuliaLang is the best.")
m.match
m.offset

# If-else
x = 3; y = 2;
if x < y
    println("x is less than y")
elseif x > y
    println("y is less than x")
else
    println("x is equal to y") 
end

x = 100;

x > 100 ? true : false

i = 1;
while i <= 5
    println(i)
    i += 1
end

for j = 1:6
    println(j)
end

# Try-catch error
try
    i = parse(Int, str)
catch
    println("Error")
end

# function
function  add(x, y)
    return x + y
end

add(5, 6)

multi(x, y) = x * y
multi(10, 5)

add_typed(x::Int, y::Int)::Int = x + y
add_typed(4, 3)

sum_diff(x, y) = (x + y, x - y)
sum_diff(5.4, 6.6)

rand(4, 3, 2)

# Anonymous function
square = x -> x^2
square(4)

square = x -> begin
    x * x
end

square(6)
y = square

y(3)

x = nothing

# Struct
struct Astruct
    x::Int
    y::Int
end;

p = Astruct(5, 2)

function Diff(a::Astruct)
    return a.x - a.y
end

Diff(p)
p.x = 1

mutable struct Mstruct
    x::Int
    y::Int
end;

p = Mstruct(5, 2)

function Diff(a::Mstruct)
    return a.x - a.y
end
Diff(p)
p.x = 4

Diff(p)

mutable struct MAstruct{T}
    x::T
    y::T
end;

pp = MAstruct(3, 2)

pp.x

# P50
x = [1, 2, 4, 5]
@show x
@show length(x)
y = [2, 4, 6, 8]
z =  x .+ y

# Relation between variables
Int <: Number 

t = (a = 1, b = 2, c = 4)
t.a
t[:c]
keys(t)
values(t)

# list
list = []
list = [1, 3]
push!(list, 3)
pop!(list)

insert!(list, 2, 7)
deleteat!(list, 3)

# Dict
d = Dict{String, Float32}()
d["tom"] = 1; d["bob"] = 2;
d

d.keys

# Set
s = Set([1, 2, 3, 3])

union(s, [3, 4, 5])
empty!(d)
length(d)

a = Array{Float32}(undef, 2, 3)
zeros(Float32, 4, 4)
ones(Float32, 4, 3)
rand(Float32, 3, 3)
randn(Float32, 2, 2)
fill(5, 3, 4)

for i = 1:6
    println(a[i])
end

eltype(a)
length(a)
ndims(a)
size(a)
test = size(a)
test[1]

A = collect(reshape(1:9, 3, 3))
# 3×3 reshape(::UnitRange{Int64}, 3, 3) with eltype Int64:
#  1  4  7
#  2  5  8
#  3  6  9

# 3×3 Array{Int64,2}:
#  1  4  7
#  2  5  8
#  3  6  9
A[3, 3]
A[9]


A = rand(Float32, 100, 100)
B = ones(Float32, 100, 100)
A + B
A .+ 1
# P81