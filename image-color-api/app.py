from flask import Flask, request, jsonify
from PIL import Image
import requests
from io import BytesIO

app = Flask(__name__)

@app.route('/get-colors', methods=['GET'])
def get_colors():
    image_url = request.args.get('url')
    resolution = request.args.get('resolution', default=5, type=int)

    if not image_url:
        return jsonify({"error": "No image URL provided"}), 400

    try:
        response = requests.get(image_url)
        img = Image.open(BytesIO(response.content))

        new_width = img.width // resolution
        new_height = img.height // resolution
        img = img.resize((new_width, new_height))

        pixels = list(img.getdata())

        color_data = []
        width, height = img.size
        for y in range(height):
            line_output = []
            for x in range(width):
                pixel = pixels[y * width + x]
                r, g, b = pixel[0], pixel[1], pixel[2]
                alpha = pixel[3] if len(pixel) == 4 else 255

                if alpha == 0:
                    line_output.append("R, R, R,")
                else:
                    line_output.append(f"{r}, {g}, {b},")

            line_output.append("B, B, B,")
            color_data.append(" ".join(line_output))

        return jsonify({
            "message": "Image processed successfully",
            "color_data": color_data
        })

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
