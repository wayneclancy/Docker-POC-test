import bottle
 
@bottle.route('/')
def home_page():
    return "Hello World\n"
 
bottle.run(host='0.0.0.0',port=5000)
