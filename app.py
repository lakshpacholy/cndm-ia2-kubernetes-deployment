from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/')
def home():
    pod_name = os.environ.get('POD_NAME', 'unknown-pod')
    pod_ip = os.environ.get('POD_IP', 'unknown-ip')
    return f"<h1>Welcome to CNDM IA2</h1><p>Pod Name: {pod_name}</p><p>Pod IP: {pod_ip}</p>"

@app.route('/info')
def info():
    return jsonify({
        "app": "cndm-ia2-flask",
        "version": "1.0.0",
        "author": "Laksh Pacholy"
    })

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
