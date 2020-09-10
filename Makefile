# MacOSX only

default:
	emcc 1.js_call_c/hello.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_add']" -o 1.js_call_c/hello.js
	emcc 2.c_call_js/hello.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_getWidth']" -o 2.c_call_js/hello.js

serve:
	$(PWD)/wes