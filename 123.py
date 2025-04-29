import ccxt, time

apiKey = '你的API_KEY'
secret = '你的API_SECRET'

exchange = ccxt.mexc({
    'apiKey': apiKey,
    'secret': secret
})

while True:
    balance = exchange.fetch_balance()
    usdt = balance['total']['USDT']
    if usdt > 3.5:
        order = exchange.create_market_buy_order('DOGE/USDT', usdt / 1.0)
        print("買入：", order)
    time.sleep(60)
