import sys
import subprocess
import os
import random

subprocess.check_call([sys.executable, "-m", "pip", "install", "tensorflow"])

import numpy as np

import tensorflow as tf
from tensorflow.keras.models import Model
from tensorflow.keras.layers import Layer, Conv2D, Dense, MaxPooling2D, Input, Flatten

pathImage = sys.argv[1]
userId = sys.argv[2]

class L1Dist(Layer):
    def __init__(self, **kwargs):
        super().__init__()

    def call(self, input_embedding, validation_embedding):
        return tf.math.abs(input_embedding - validation_embedding)

def preprocess(file_path):
    byte_img = tf.io.read_file(file_path)
    img = tf.io.decode_jpeg(byte_img)
    img = tf.image.resize(img, (100,100))
    img = img / 255.0
    return img

def verify(model, detection_threshold, verification_threshold, userId, path):
    #directory = './api/utils/assets/users'
    directory = './api/utils/assets/users'
    results = []
    for image in os.listdir(os.path.join(directory, userId)):
        #input_img = preprocess(os.path.join(path, 'input_image', 'input_image.jpg'))
        input_img = preprocess(os.path.join('./api/utils/assets/recognize', 'input_image.jpg'))
        validation_img = preprocess(os.path.join(directory+'/'+userId, image))

        result = model.predict(list(np.expand_dims([input_img, validation_img], axis=1)))
        results.append(result)

    detection = np.sum(np.array(results) > detection_threshold)
    verification = detection / len(os.listdir(os.path.join(directory, userId)))
    verified = verification > verification_threshold

    return results, verified, verification

model = tf.keras.models.load_model('./api/services/siamesemodel', custom_objects={'L1Dist':L1Dist, 'BinaryCrossentropy': tf.losses.BinaryCrossentropy})
results, verified, verification = verify(model, 0.80, 0.80, userId, pathImage)

print(verified)
#print(verification)