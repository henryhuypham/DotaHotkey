+Enter::
	Send +{Enter}
	Suspend on
	return
Enter::
	Suspend toggle
	Send {Enter}
	return
+::
	Run "Control.ahk"
	ExitApp
^=::Suspend

y::Numpad8
z::Numpad7
Space::Numpad1
b::Numpad2

n::q
t::w
u::e
j::	Send {Enter}-invokelist{Enter}
	return

+x::	Send qqqr
	return
x::y
+c::	Send qqwr
	return
c::v
+v::	Send qqer
	return
v::g
+s::	Send wwer
	return 
s::z
+d::	Send wwqr
	return
d::x
+f::	Send wwwr
	return
f::c
+g::	Send qwer
	return
g::b
+w::	Send eewr
	return
w::d
+e::	Send eeqr
	return
e::f
+r::	Send eeer
	return
r::t

