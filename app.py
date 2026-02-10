from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return "Web3 Wallet API is Running! Version: v1.0"

@app.route('/balance')
def get_balance():
    # 模拟返回一个账户余额
    return jsonify({"address": "0x123...abc", "balance": 100.5, "unit": "ETH"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
