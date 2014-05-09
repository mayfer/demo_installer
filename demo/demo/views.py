from django.http import HttpResponse, HttpResponseRedirect, Http404
def html_response(response):
    return HttpResponse(response, mimetype='text/html')

def home(request):
    return html_response("hell oworld")
