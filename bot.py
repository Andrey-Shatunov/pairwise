from bottle import route, run, post, template, get, static_file
from bottle import request
from allpairspy import AllPairs


@get('/<filename:re:.*\.css>')
def stylesheets(filename):
    return static_file(filename, root='static/css/')

@route('/')
def root(info='olo'):
    result = {'pairwise':'','result':[]}
    return template('index.tpl', result=result)


@post('/')
def hello():
    pairwise = request.forms.get('pairwise')
    result = {'pairwise':pairwise, 'result':[]}

    rows =  [x.strip().split(',') for x in pairwise.split('\n')]

    for i, pairs in enumerate(AllPairs(rows)):
        result['result'].append('{:2d}: {}'.format(i, pairs))

    return template('index.tpl', result=result)


if __name__ == '__main__':  
  run(host="0.0.0.0", port=8080)  
else :
  app = application = bottle.default_app()  