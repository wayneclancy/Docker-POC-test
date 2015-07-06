import bottle
 
@bottle.route('/')
def home_page():
    return "Hello Everyone\n"
 
bottle.run(host='localhost',port=5001)
