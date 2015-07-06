import bottle
 
@bottle.route('/')
def home_page():
    return "Hello World\n"
 
bottle.run(host='localhost',port=5000)
