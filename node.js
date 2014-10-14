var http = require('http'); //instancie server http
var url = require('url'); //idem pour url
var querystring = require('querystring'); //objet de parsage


var server = http.createServer(function(req, res) { 
    var params = querystring.parse(url.parse(req.url).query); //parse
    res.writeHead(200, {"Content-Type": "text/plain"}); 
    if ('prenom' in params && 'nom' in params) {
        res.write('Vous vous appelez ' + params['prenom'] + ' ' + params['nom']);
    }
    else {
        res.write('Vous devez bien avoir un prénom et un nom, non ?');
    }
    res.end();
});

//avec URL:         http://localhost:8080?prenom=Robert&nom=Dupont


/////////////////////////////////////FONCTION DE CALLBACK/////////////////////////
var instructionsNouveauVisiteur = function(req, res) {
  res.writeHead(200);
  res.end('Salut tout le monde !');
}
var server = http.createServer(instructionsNouveauVisiteur);
