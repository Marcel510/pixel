## r/placeTUM
This is the bot for the r/place collaboration between the following communities:
* TUM
* RWTH
* HSWT

## Setup
1) Checkout the repository
```
git clone https://github.com/etonaly/pixel placetum && cd placetum/
```

2) Install required dependencies
```
npm install
```

3) Copy your `reddit_session` cookie from Reddit and use it to start the bot
* Unix:
```
PLACE_TOKENS='["insert_cookie_value"]' npm run start
```
* Windows:
```
set PLACE_TOKENS=["insert_cookie_value"]
npm run start
```

## Bot Dashbard
https://place.computerscholler.com/

## Adding Images
1) add your image to the images folder. It should be a png with every pixel representing exactly one pixel on r/place.
2) add a section for your image to `config.toml`. Should probably discuss priority with us.
3) run `scripts/generate_json.py`
4) run `scripts/render_json.py`
5) check the generated image
6) commit and push the new image, `pixel.json`, `output.png` and `config.toml`
