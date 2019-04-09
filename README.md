# Programming Test - Foreign Exchange Trades

### Run with docker (docker.io):
```
git clone --recursive https://github.com/kocki/FET.git
cd FET
```
Fetch api key from fixer.io and put it into local settings in place of *API_KEY*.

```
echo "FIXER_API_KEY = 'API_KEY'" > fet_server/project/settings_local.py
docker build -t fet .
docker run -p 8000:8000 -p 8080:8080 fet
```

### Warnings
* Free fixer.io account services only EUR sell currency.
It could take few minutes to install all javascript dependencies.

Open browser and go to http://localhost:8080/
