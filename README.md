# Programming Test - Foreign Exchange Trades

```
git clone --recursive git@github.com:kocki/FET.git
cd FET
```
Fetch api key from fixer.io and put it into local settings.

```
echo FIXER_API_KEY = 'API_KEY' > fet_server/project/settings_local.py
docker build -t fet .
docker run -p 8000:8000 -p 8080:8080 -d fet
```

Open browser and go to http://localhost:8080/

