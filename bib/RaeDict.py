import urllib
MGIName = "ambiguo"
print urllib.urlopen("http://lema.rae.es/drae/?val="+ MGIName).read()