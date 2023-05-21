︠14e284db-573c-4017-a0f2-75d069ddc554︠
import matplotlib.pyplot as plt
# draw histogram of 1000 runs of 1000 estimated games while using Strategy 1
data_1 = [0.431, 0.445, 0.436, 0.443, 0.45, 0.439, 0.458, 0.436, 0.472, 0.451, 0.413, 0.443, 0.431, 0.44, 0.456, 0.425, 0.43, 0.439, 0.429, 0.426, 0.421, 0.433, 0.436, 0.445, 0.423, 0.461, 0.448, 0.459, 0.46, 0.434, 0.434, 0.411, 0.464, 0.449, 0.427, 0.452, 0.446, 0.453, 0.442, 0.463, 0.437, 0.458, 0.447, 0.476, 0.442, 0.472, 0.443, 0.426, 0.427, 0.447, 0.446, 0.439, 0.423, 0.451, 0.436, 0.441, 0.449, 0.46, 0.435, 0.428, 0.427, 0.454, 0.441, 0.459, 0.437, 0.46, 0.455, 0.434, 0.418, 0.446, 0.437, 0.459, 0.421, 0.437, 0.421, 0.418, 0.458, 0.423, 0.446, 0.449, 0.411, 0.46, 0.439, 0.422, 0.449, 0.453, 0.431, 0.431, 0.446, 0.411, 0.46, 0.455, 0.424, 0.468, 0.422, 0.461, 0.452, 0.44, 0.446, 0.461, 0.435, 0.453, 0.426, 0.45, 0.439, 0.439, 0.462, 0.426, 0.46, 0.444, 0.451, 0.424, 0.449, 0.434, 0.447, 0.435, 0.447, 0.441, 0.425, 0.457, 0.445, 0.426, 0.468, 0.45, 0.427, 0.435, 0.427, 0.417, 0.447, 0.468, 0.439, 0.45, 0.444, 0.445, 0.444, 0.439, 0.44, 0.442, 0.441, 0.445, 0.428, 0.426, 0.473, 0.439, 0.434, 0.431, 0.435, 0.463, 0.427, 0.427, 0.44, 0.461, 0.408, 0.434, 0.417, 0.43, 0.444, 0.464, 0.442, 0.437, 0.455, 0.459, 0.47, 0.431, 0.435, 0.46, 0.438, 0.462, 0.479, 0.463, 0.478, 0.467, 0.475, 0.463, 0.44, 0.454, 0.436, 0.426, 0.437, 0.456, 0.434, 0.447, 0.42, 0.432, 0.435, 0.437, 0.425, 0.437, 0.431, 0.454, 0.444, 0.439, 0.412, 0.43, 0.47, 0.434, 0.449, 0.445, 0.442, 0.406, 0.427, 0.434, 0.415, 0.422, 0.449, 0.412, 0.427, 0.443, 0.464, 0.449, 0.476, 0.424, 0.464, 0.429, 0.459, 0.452, 0.452, 0.42, 0.48, 0.436, 0.431, 0.429, 0.428, 0.467, 0.426, 0.432, 0.447, 0.433, 0.448, 0.482, 0.433, 0.476, 0.432, 0.447, 0.411, 0.447, 0.45, 0.427, 0.461, 0.414, 0.437, 0.475, 0.455, 0.434, 0.454, 0.45, 0.44, 0.439, 0.453, 0.413, 0.466, 0.451, 0.413, 0.445, 0.428, 0.424, 0.461, 0.425, 0.449, 0.434, 0.437, 0.451, 0.445, 0.463, 0.471, 0.469, 0.447, 0.441, 0.447, 0.428, 0.46, 0.435, 0.433, 0.426, 0.436, 0.479, 0.451, 0.454, 0.41, 0.473, 0.439, 0.426, 0.443, 0.438, 0.46, 0.442, 0.481, 0.5, 0.44, 0.451, 0.44, 0.435, 0.475, 0.462, 0.436, 0.45, 0.418, 0.447, 0.446, 0.444, 0.412, 0.411, 0.437, 0.443, 0.447, 0.457, 0.461, 0.455, 0.443, 0.444, 0.429, 0.447, 0.454, 0.429, 0.417, 0.44, 0.443, 0.454, 0.444, 0.432, 0.452, 0.457, 0.415, 0.445, 0.428, 0.424, 0.442, 0.446, 0.434, 0.409, 0.446, 0.443, 0.453, 0.466, 0.442, 0.439, 0.392, 0.441, 0.421, 0.433, 0.43, 0.416, 0.461, 0.453, 0.434, 0.442, 0.435, 0.427, 0.462, 0.415, 0.45, 0.441, 0.457, 0.453, 0.453, 0.434, 0.44, 0.427, 0.44, 0.459, 0.448, 0.441, 0.427, 0.427, 0.427, 0.461, 0.457, 0.465, 0.422, 0.448, 0.438, 0.421, 0.424, 0.411, 0.449, 0.447, 0.463, 0.427, 0.439, 0.441, 0.451, 0.445, 0.448, 0.423, 0.437, 0.448, 0.446, 0.457, 0.448, 0.445, 0.431, 0.447, 0.438, 0.449, 0.461, 0.467, 0.422, 0.442, 0.437, 0.44, 0.448, 0.427, 0.451, 0.444, 0.457, 0.412, 0.449, 0.45, 0.44, 0.448, 0.44, 0.405, 0.431, 0.448, 0.457, 0.449, 0.435, 0.437, 0.425, 0.462, 0.422, 0.422, 0.43, 0.447, 0.458, 0.443, 0.455, 0.478, 0.456, 0.422, 0.453, 0.442, 0.469, 0.435, 0.429, 0.454, 0.484, 0.449, 0.439, 0.455, 0.44, 0.452, 0.434, 0.428, 0.419, 0.419, 0.435, 0.431, 0.414, 0.47, 0.423, 0.438, 0.465, 0.436, 0.451, 0.459, 0.448, 0.445, 0.443, 0.463, 0.445, 0.462, 0.446, 0.432, 0.437, 0.446, 0.433, 0.444, 0.454, 0.46, 0.442, 0.422, 0.433, 0.44, 0.451, 0.467, 0.423, 0.431, 0.432, 0.437, 0.445, 0.45, 0.457, 0.429, 0.435, 0.433, 0.457, 0.435, 0.458, 0.457, 0.433, 0.423, 0.422, 0.45, 0.449, 0.414, 0.482, 0.44, 0.45, 0.457, 0.438, 0.419, 0.454, 0.436, 0.429, 0.429, 0.453, 0.446, 0.46, 0.43, 0.48, 0.456, 0.431, 0.428, 0.438, 0.418, 0.467, 0.43, 0.434, 0.437, 0.427, 0.449, 0.477, 0.438, 0.472, 0.417, 0.469, 0.453, 0.439, 0.458, 0.452, 0.434, 0.424, 0.452, 0.438, 0.436, 0.441, 0.442, 0.435, 0.428, 0.435, 0.457, 0.435, 0.44, 0.451, 0.469, 0.427, 0.47, 0.449, 0.431, 0.433, 0.446, 0.456, 0.47, 0.456, 0.446, 0.46, 0.399, 0.43, 0.441, 0.431, 0.466, 0.424, 0.437, 0.442, 0.438, 0.454, 0.424, 0.436, 0.446, 0.447, 0.439, 0.436, 0.43, 0.452, 0.444, 0.445, 0.444, 0.444, 0.435, 0.43, 0.442, 0.446, 0.446, 0.431, 0.423, 0.43, 0.454, 0.42, 0.476, 0.458, 0.438, 0.425, 0.453, 0.411, 0.453, 0.413, 0.467, 0.474, 0.443, 0.447, 0.433, 0.43, 0.431, 0.427, 0.469, 0.434, 0.441, 0.453, 0.456, 0.432, 0.416, 0.458, 0.46, 0.464, 0.431, 0.431, 0.45, 0.417, 0.458, 0.467, 0.443, 0.43, 0.435, 0.436, 0.474, 0.431, 0.473, 0.437, 0.434, 0.434, 0.45, 0.437, 0.416, 0.444, 0.432, 0.449, 0.442, 0.423, 0.436, 0.412, 0.452, 0.435, 0.468, 0.461, 0.457, 0.456, 0.429, 0.449, 0.419, 0.431, 0.443, 0.44, 0.426, 0.466, 0.423, 0.459, 0.464, 0.448, 0.465, 0.436, 0.427, 0.443, 0.442, 0.444, 0.449, 0.459, 0.432, 0.439, 0.445, 0.428, 0.459, 0.434, 0.437, 0.444, 0.435, 0.46, 0.442, 0.431, 0.444, 0.492, 0.44, 0.432, 0.452, 0.426, 0.418, 0.43, 0.463, 0.436, 0.443, 0.442, 0.429, 0.451, 0.436, 0.464, 0.447, 0.435, 0.457, 0.446, 0.479, 0.454, 0.439, 0.454, 0.455, 0.455, 0.419, 0.436, 0.451, 0.457, 0.445, 0.433, 0.425, 0.475, 0.428, 0.415, 0.449, 0.421, 0.442, 0.416, 0.425, 0.429, 0.452, 0.454, 0.442, 0.434, 0.438, 0.455, 0.436, 0.452, 0.448, 0.453, 0.465, 0.45, 0.451, 0.425, 0.416, 0.441, 0.483, 0.436, 0.444, 0.433, 0.439, 0.461, 0.449, 0.466, 0.444, 0.453, 0.423, 0.428, 0.44, 0.425, 0.476, 0.446, 0.457, 0.444, 0.42, 0.458, 0.391, 0.431, 0.437, 0.429, 0.432, 0.436, 0.418, 0.457, 0.452, 0.425, 0.434, 0.43, 0.451, 0.452, 0.45, 0.464, 0.432, 0.461, 0.417, 0.45, 0.42, 0.442, 0.44, 0.408, 0.415, 0.455, 0.453, 0.445, 0.45, 0.455, 0.45, 0.456, 0.456, 0.44, 0.429, 0.464, 0.449, 0.439, 0.467, 0.447, 0.45, 0.439, 0.456, 0.463, 0.475, 0.474, 0.426, 0.443, 0.438, 0.429, 0.421, 0.407, 0.425, 0.44, 0.462, 0.438, 0.388, 0.415, 0.452, 0.449, 0.462, 0.461, 0.443, 0.457, 0.459, 0.44, 0.43, 0.439, 0.437, 0.453, 0.428, 0.412, 0.44, 0.441, 0.45, 0.442, 0.428, 0.448, 0.443, 0.438, 0.433, 0.45, 0.434, 0.463, 0.449, 0.455, 0.419, 0.437, 0.424, 0.431, 0.439, 0.436, 0.428, 0.436, 0.431, 0.428, 0.437, 0.454, 0.453, 0.408, 0.451, 0.442, 0.477, 0.461, 0.448, 0.446, 0.463, 0.454, 0.456, 0.442, 0.436, 0.461, 0.434, 0.419, 0.442, 0.433, 0.426, 0.424, 0.424, 0.432, 0.439, 0.449, 0.427, 0.429, 0.443, 0.423, 0.428, 0.441, 0.414, 0.453, 0.418, 0.428, 0.421, 0.458, 0.419, 0.467, 0.41, 0.443, 0.444, 0.469, 0.455, 0.455, 0.435, 0.467, 0.414, 0.432, 0.432, 0.462, 0.442, 0.462, 0.461, 0.437, 0.453, 0.464, 0.449, 0.444, 0.477, 0.43, 0.432, 0.444, 0.456, 0.443, 0.429, 0.461, 0.416, 0.436, 0.464, 0.472, 0.469, 0.444, 0.447, 0.45, 0.476, 0.443, 0.433, 0.444, 0.448, 0.448, 0.442, 0.441, 0.461, 0.449, 0.405, 0.414, 0.451, 0.45, 0.451, 0.432, 0.439, 0.451, 0.435, 0.445, 0.448, 0.46, 0.43, 0.424, 0.435, 0.435, 0.451, 0.434, 0.456, 0.442, 0.404, 0.444, 0.466, 0.406, 0.44, 0.458, 0.45, 0.435, 0.456, 0.456, 0.445, 0.454, 0.471, 0.446, 0.441, 0.445, 0.416, 0.436, 0.445, 0.44, 0.46, 0.443, 0.438, 0.452, 0.462, 0.442, 0.456, 0.457, 0.432, 0.445, 0.413, 0.426, 0.437, 0.437, 0.418, 0.444, 0.449, 0.434, 0.459, 0.433, 0.458]
plt.hist(data_1, bins = 20, density = True)
plt.xlabel('probability of the player winning')
plt.ylabel('density (%)')
plt.title('Histogram of the winning probability of the player using Strategy 1')
plt.show()
︡54da7f00-7a19-40fb-ac5a-92d46227be26︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.10/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'data_0' is not defined\n"}︡{"done":true}
︠7f103e8b-25eb-4add-8d67-00fefc4ad0c2︠
import matplotlib.pyplot as plt
# draw histogram of 1000 runs of 1000 estimated games while using Strategy 2
data_2 = [0.422, 0.428, 0.414, 0.414, 0.397, 0.397, 0.432, 0.417, 0.427, 0.419, 0.399, 0.422, 0.396, 0.409, 0.436, 0.406, 0.436, 0.429, 0.405, 0.42, 0.423, 0.416, 0.433, 0.408, 0.447, 0.428, 0.416, 0.409, 0.417, 0.409, 0.409, 0.418, 0.448, 0.423, 0.415, 0.378, 0.446, 0.437, 0.423, 0.42, 0.415, 0.405, 0.417, 0.425, 0.415, 0.451, 0.428, 0.415, 0.413, 0.397, 0.417, 0.412, 0.41, 0.427, 0.425, 0.399, 0.41, 0.429, 0.429, 0.44, 0.429, 0.406, 0.393, 0.429, 0.413, 0.409, 0.431, 0.421, 0.422, 0.427, 0.402, 0.407, 0.418, 0.416, 0.4, 0.397, 0.429, 0.417, 0.414, 0.41, 0.425, 0.441, 0.408, 0.432, 0.431, 0.421, 0.4, 0.405, 0.399, 0.405, 0.416, 0.428, 0.425, 0.432, 0.405, 0.406, 0.437, 0.445, 0.431, 0.413, 0.417, 0.433, 0.426, 0.42, 0.388, 0.42, 0.421, 0.411, 0.419, 0.418, 0.418, 0.424, 0.431, 0.402, 0.417, 0.395, 0.401, 0.427, 0.423, 0.414, 0.396, 0.434, 0.429, 0.45, 0.414, 0.413, 0.403, 0.406, 0.422, 0.411, 0.421, 0.438, 0.414, 0.417, 0.411, 0.429, 0.418, 0.408, 0.401, 0.404, 0.412, 0.435, 0.414, 0.444, 0.421, 0.41, 0.412, 0.428, 0.424, 0.432, 0.436, 0.445, 0.405, 0.412, 0.425, 0.419, 0.412, 0.435, 0.402, 0.43, 0.383, 0.42, 0.41, 0.397, 0.413, 0.413, 0.412, 0.454, 0.419, 0.426, 0.419, 0.403, 0.428, 0.428, 0.411, 0.424, 0.421, 0.403, 0.424, 0.412, 0.432, 0.419, 0.42, 0.415, 0.44, 0.433, 0.388, 0.409, 0.422, 0.413, 0.395, 0.402, 0.419, 0.401, 0.424, 0.405, 0.462, 0.396, 0.429, 0.424, 0.397, 0.437, 0.424, 0.426, 0.419, 0.427, 0.428, 0.412, 0.438, 0.41, 0.417, 0.423, 0.413, 0.407, 0.413, 0.44, 0.451, 0.399, 0.431, 0.412, 0.412, 0.456, 0.4, 0.402, 0.403, 0.415, 0.418, 0.422, 0.42, 0.448, 0.405, 0.429, 0.436, 0.407, 0.413, 0.419, 0.398, 0.394, 0.401, 0.413, 0.45, 0.43, 0.404, 0.445, 0.379, 0.408, 0.419, 0.435, 0.394, 0.419, 0.412, 0.429, 0.428, 0.412, 0.409, 0.404, 0.407, 0.449, 0.411, 0.433, 0.403, 0.386, 0.416, 0.411, 0.416, 0.406, 0.428, 0.436, 0.43, 0.42, 0.413, 0.392, 0.416, 0.442, 0.443, 0.414, 0.397, 0.422, 0.413, 0.454, 0.418, 0.413, 0.442, 0.417, 0.408, 0.441, 0.395, 0.435, 0.452, 0.405, 0.446, 0.434, 0.402, 0.409, 0.429, 0.421, 0.42, 0.417, 0.398, 0.422, 0.419, 0.45, 0.437, 0.446, 0.435, 0.429, 0.439, 0.411, 0.407, 0.45, 0.405, 0.41, 0.418, 0.422, 0.404, 0.418, 0.409, 0.416, 0.398, 0.436, 0.398, 0.416, 0.417, 0.42, 0.407, 0.442, 0.431, 0.412, 0.429, 0.426, 0.415, 0.421, 0.414, 0.422, 0.433, 0.435, 0.415, 0.433, 0.419, 0.427, 0.399, 0.421, 0.423, 0.408, 0.434, 0.405, 0.413, 0.443, 0.421, 0.42, 0.415, 0.423, 0.428, 0.426, 0.419, 0.415, 0.402, 0.427, 0.424, 0.426, 0.427, 0.439, 0.42, 0.417, 0.415, 0.43, 0.429, 0.407, 0.421, 0.423, 0.409, 0.448, 0.402, 0.393, 0.407, 0.401, 0.418, 0.434, 0.418, 0.388, 0.434, 0.388, 0.44, 0.401, 0.386, 0.393, 0.438, 0.401, 0.413, 0.429, 0.427, 0.404, 0.407, 0.387, 0.408, 0.431, 0.436, 0.439, 0.427, 0.436, 0.413, 0.417, 0.413, 0.438, 0.407, 0.421, 0.418, 0.425, 0.416, 0.404, 0.43, 0.426, 0.409, 0.436, 0.393, 0.407, 0.407, 0.421, 0.431, 0.415, 0.452, 0.437, 0.433, 0.448, 0.409, 0.419, 0.411, 0.431, 0.424, 0.45, 0.437, 0.425, 0.399, 0.412, 0.43, 0.425, 0.407, 0.408, 0.431, 0.399, 0.432, 0.416, 0.435, 0.405, 0.428, 0.425, 0.406, 0.438, 0.417, 0.446, 0.435, 0.408, 0.437, 0.417, 0.42, 0.42, 0.424, 0.408, 0.445, 0.399, 0.434, 0.411, 0.401, 0.4, 0.424, 0.406, 0.41, 0.403, 0.425, 0.424, 0.415, 0.422, 0.433, 0.423, 0.428, 0.412, 0.406, 0.422, 0.412, 0.428, 0.425, 0.391, 0.398, 0.412, 0.404, 0.44, 0.46, 0.437, 0.405, 0.436, 0.41, 0.448, 0.423, 0.425, 0.397, 0.41, 0.424, 0.413, 0.419, 0.453, 0.397, 0.397, 0.429, 0.421, 0.412, 0.39, 0.398, 0.413, 0.402, 0.427, 0.421, 0.399, 0.42, 0.428, 0.435, 0.39, 0.432, 0.442, 0.429, 0.41, 0.41, 0.43, 0.434, 0.406, 0.403, 0.423, 0.413, 0.434, 0.406, 0.436, 0.421, 0.432, 0.416, 0.436, 0.406, 0.394, 0.406, 0.407, 0.421, 0.431, 0.432, 0.43, 0.439, 0.386, 0.412, 0.42, 0.437, 0.433, 0.426, 0.422, 0.421, 0.425, 0.408, 0.417, 0.423, 0.399, 0.423, 0.435, 0.402, 0.43, 0.421, 0.402, 0.427, 0.426, 0.406, 0.436, 0.408, 0.408, 0.429, 0.42, 0.427, 0.409, 0.408, 0.436, 0.402, 0.423, 0.446, 0.431, 0.4, 0.444, 0.415, 0.393, 0.421, 0.429, 0.394, 0.406, 0.424, 0.428, 0.413, 0.415, 0.402, 0.398, 0.418, 0.421, 0.417, 0.409, 0.41, 0.448, 0.439, 0.434, 0.395, 0.432, 0.415, 0.428, 0.412, 0.419, 0.416, 0.395, 0.412, 0.379, 0.411, 0.399, 0.423, 0.43, 0.439, 0.415, 0.438, 0.434, 0.409, 0.396, 0.428, 0.434, 0.448, 0.434, 0.403, 0.434, 0.427, 0.423, 0.452, 0.408, 0.404, 0.444, 0.45, 0.396, 0.425, 0.445, 0.408, 0.407, 0.423, 0.428, 0.417, 0.426, 0.417, 0.423, 0.442, 0.428, 0.426, 0.414, 0.405, 0.418, 0.463, 0.42, 0.423, 0.419, 0.432, 0.431, 0.418, 0.413, 0.404, 0.417, 0.416, 0.443, 0.406, 0.428, 0.433, 0.426, 0.421, 0.425, 0.422, 0.394, 0.43, 0.431, 0.436, 0.414, 0.419, 0.445, 0.41, 0.409, 0.411, 0.427, 0.422, 0.43, 0.405, 0.433, 0.406, 0.412, 0.437, 0.444, 0.403, 0.424, 0.395, 0.392, 0.455, 0.429, 0.417, 0.423, 0.415, 0.436, 0.415, 0.423, 0.398, 0.419, 0.443, 0.433, 0.43, 0.469, 0.41, 0.435, 0.4, 0.438, 0.438, 0.413, 0.415, 0.406, 0.405, 0.406, 0.401, 0.406, 0.41, 0.421, 0.424, 0.423, 0.427, 0.406, 0.415, 0.426, 0.404, 0.419, 0.398, 0.405, 0.414, 0.404, 0.408, 0.386, 0.397, 0.426, 0.428, 0.435, 0.412, 0.423, 0.411, 0.415, 0.424, 0.437, 0.41, 0.427, 0.401, 0.447, 0.425, 0.404, 0.434, 0.441, 0.416, 0.411, 0.407, 0.448, 0.43, 0.424, 0.406, 0.424, 0.413, 0.41, 0.444, 0.413, 0.446, 0.395, 0.423, 0.435, 0.413, 0.409, 0.403, 0.429, 0.434, 0.419, 0.446, 0.418, 0.406, 0.456, 0.399, 0.419, 0.41, 0.425, 0.428, 0.398, 0.403, 0.397, 0.405, 0.427, 0.409, 0.421, 0.414, 0.442, 0.424, 0.399, 0.424, 0.407, 0.421, 0.439, 0.431, 0.406, 0.43, 0.411, 0.427, 0.411, 0.43, 0.412, 0.388, 0.411, 0.417, 0.43, 0.412, 0.413, 0.431, 0.45, 0.416, 0.415, 0.437, 0.441, 0.402, 0.421, 0.424, 0.406, 0.418, 0.433, 0.407, 0.419, 0.414, 0.441, 0.422, 0.421, 0.414, 0.417, 0.413, 0.423, 0.422, 0.443, 0.413, 0.428, 0.429, 0.406, 0.434, 0.417, 0.413, 0.455, 0.396, 0.416, 0.421, 0.386, 0.422, 0.426, 0.421, 0.415, 0.422, 0.378, 0.414, 0.432, 0.399, 0.43, 0.415, 0.397, 0.405, 0.445, 0.434, 0.421, 0.439, 0.417, 0.436, 0.43, 0.429, 0.416, 0.406, 0.432, 0.408, 0.411, 0.427, 0.403, 0.42, 0.43, 0.417, 0.434, 0.409, 0.434, 0.407, 0.438, 0.412, 0.429, 0.447, 0.41, 0.422, 0.417, 0.419, 0.415, 0.409, 0.413, 0.409, 0.416, 0.41, 0.4, 0.403, 0.418, 0.415, 0.403, 0.436, 0.407, 0.444, 0.435, 0.398, 0.42, 0.412, 0.405, 0.391, 0.415, 0.422, 0.431, 0.414, 0.418, 0.406, 0.429, 0.415, 0.423, 0.425, 0.439, 0.444, 0.421, 0.432, 0.399, 0.435, 0.439, 0.414, 0.44, 0.428, 0.408, 0.426, 0.408, 0.427, 0.39, 0.404, 0.445, 0.395, 0.413, 0.429, 0.41, 0.425, 0.423, 0.434, 0.439, 0.41, 0.407, 0.445, 0.42, 0.425, 0.391, 0.412, 0.436, 0.44, 0.432, 0.404, 0.421, 0.408, 0.45, 0.434, 0.421, 0.446, 0.398, 0.434, 0.418, 0.419, 0.4, 0.432, 0.448, 0.417, 0.424, 0.43, 0.424, 0.413, 0.403, 0.404, 0.423, 0.421, 0.425, 0.397, 0.437, 0.439, 0.408, 0.418, 0.392, 0.435, 0.427, 0.442, 0.413, 0.429, 0.408, 0.426, 0.402, 0.443, 0.415, 0.401, 0.45, 0.438, 0.43]
plt.hist(data_2, bins = 20, density = True)
plt.xlabel('probability of the player winning')
plt.ylabel('density (%)')
plt.title('Histogram of the winning probability of the player using Strategy 2')
plt.show()
︡ccc9c1a6-ff78-4661-ba3a-e60fa2b60cd3︡{"stdout":"(array([ 0.87912088,  1.53846154,  2.41758242,  5.93406593, 10.76923077,\n       16.7032967 , 20.21978022, 26.59340659, 21.75824176, 28.57142857,\n       23.95604396, 18.24175824, 18.24175824,  7.47252747,  8.13186813,\n        4.83516484,  2.1978022 ,  0.43956044,  0.65934066,  0.21978022]), array([0.378  , 0.38255, 0.3871 , 0.39165, 0.3962 , 0.40075, 0.4053 ,\n       0.40985, 0.4144 , 0.41895, 0.4235 , 0.42805, 0.4326 , 0.43715,\n       0.4417 , 0.44625, 0.4508 , 0.45535, 0.4599 , 0.46445, 0.469  ]), <BarContainer object of 20 artists>)\n"}︡{"stdout":"Text(0.5, 0, 'probability of the player winning')\n"}︡{"stdout":"Text(0, 0.5, 'density (%)')\n"}︡{"file":{"filename":"3d0daf29-5c66-4377-8082-032cad6fe6cd.svg","show":true,"text":null,"uuid":"cfc764f3-388e-49b6-9a11-8d7bfb7f701e"},"once":false}︡{"done":true}
︠8703762c-2988-49b0-999b-ea8b357258e8︠
import matplotlib.pyplot as plt
# draw histogram of 1000 runs of 1000 estimated games while using Strategy 3
data_3 = [0.456, 0.456, 0.443, 0.474, 0.489, 0.455, 0.471, 0.458, 0.453, 0.479, 0.461, 0.442, 0.446, 0.478, 0.462, 0.459, 0.46, 0.441, 0.454, 0.47, 0.459, 0.447, 0.441, 0.47, 0.469, 0.465, 0.467, 0.456, 0.449, 0.441, 0.487, 0.439, 0.444, 0.469, 0.464, 0.476, 0.45, 0.49, 0.452, 0.43, 0.462, 0.479, 0.462, 0.473, 0.461, 0.442, 0.462, 0.47, 0.463, 0.442, 0.447, 0.468, 0.45, 0.475, 0.458, 0.475, 0.471, 0.47, 0.455, 0.472, 0.489, 0.451, 0.47, 0.472, 0.468, 0.484, 0.447, 0.449, 0.455, 0.466, 0.462, 0.458, 0.461, 0.443, 0.455, 0.46, 0.458, 0.43, 0.458, 0.468, 0.465, 0.459, 0.448, 0.463, 0.47, 0.458, 0.438, 0.461, 0.472, 0.455, 0.457, 0.461, 0.433, 0.463, 0.466, 0.469, 0.469, 0.454, 0.493, 0.466, 0.449, 0.452, 0.452, 0.458, 0.443, 0.446, 0.469, 0.454, 0.465, 0.44, 0.494, 0.443, 0.484, 0.461, 0.466, 0.461, 0.489, 0.451, 0.487, 0.468, 0.467, 0.452, 0.47, 0.482, 0.442, 0.458, 0.482, 0.473, 0.461, 0.483, 0.467, 0.45, 0.454, 0.452, 0.443, 0.476, 0.469, 0.439, 0.462, 0.444, 0.46, 0.476, 0.444, 0.492, 0.429, 0.451, 0.459, 0.472, 0.482, 0.456, 0.483, 0.488, 0.45, 0.46, 0.482, 0.459, 0.443, 0.497, 0.454, 0.448, 0.474, 0.448, 0.449, 0.45, 0.478, 0.434, 0.46, 0.446, 0.451, 0.432, 0.454, 0.467, 0.432, 0.472, 0.464, 0.457, 0.461, 0.459, 0.469, 0.484, 0.451, 0.45, 0.462, 0.438, 0.453, 0.435, 0.44, 0.473, 0.475, 0.468, 0.441, 0.467, 0.453, 0.457, 0.488, 0.434, 0.47, 0.476, 0.457, 0.466, 0.458, 0.471, 0.464, 0.464, 0.487, 0.478, 0.441, 0.464, 0.449, 0.453, 0.471, 0.437, 0.443, 0.469, 0.467, 0.467, 0.469, 0.451, 0.446, 0.45, 0.468, 0.462, 0.464, 0.478, 0.459, 0.439, 0.447, 0.453, 0.417, 0.45, 0.46, 0.488, 0.448, 0.463, 0.451, 0.482, 0.479, 0.45, 0.483, 0.465, 0.433, 0.467, 0.465, 0.445, 0.457, 0.444, 0.468, 0.459, 0.435, 0.457, 0.449, 0.467, 0.479, 0.469, 0.48, 0.46, 0.459, 0.458, 0.48, 0.466, 0.472, 0.458, 0.452, 0.466, 0.457, 0.466, 0.417, 0.448, 0.451, 0.474, 0.478, 0.453, 0.454, 0.458, 0.442, 0.456, 0.456, 0.464, 0.462, 0.459, 0.449, 0.481, 0.499, 0.47, 0.479, 0.466, 0.468, 0.481, 0.471, 0.462, 0.438, 0.448, 0.457, 0.456, 0.455, 0.471, 0.446, 0.475, 0.445, 0.47, 0.474, 0.46, 0.415, 0.433, 0.466, 0.447, 0.458, 0.484, 0.473, 0.444, 0.489, 0.437, 0.464, 0.438, 0.481, 0.502, 0.464, 0.46, 0.459, 0.456, 0.482, 0.463, 0.474, 0.47, 0.456, 0.497, 0.469, 0.452, 0.452, 0.445, 0.521, 0.47, 0.46, 0.467, 0.508, 0.483, 0.46, 0.457, 0.464, 0.449, 0.462, 0.472, 0.479, 0.454, 0.425, 0.45, 0.463, 0.482, 0.465, 0.469, 0.437, 0.478, 0.486, 0.46, 0.483, 0.476, 0.466, 0.458, 0.474, 0.465, 0.47, 0.435, 0.459, 0.443, 0.455, 0.45, 0.485, 0.471, 0.465, 0.447, 0.479, 0.487, 0.473, 0.47, 0.475, 0.474, 0.452, 0.467, 0.486, 0.473, 0.47, 0.444, 0.48, 0.45, 0.448, 0.461, 0.456, 0.464, 0.456, 0.448, 0.47, 0.464, 0.462, 0.468, 0.464, 0.48, 0.479, 0.429, 0.469, 0.439, 0.459, 0.452, 0.441, 0.471, 0.441, 0.453, 0.479, 0.465, 0.457, 0.481, 0.468, 0.455, 0.472, 0.466, 0.456, 0.475, 0.468, 0.466, 0.474, 0.477, 0.46, 0.457, 0.476, 0.456, 0.479, 0.468, 0.457, 0.477, 0.474, 0.439, 0.471, 0.456, 0.452, 0.48, 0.457, 0.472, 0.438, 0.472, 0.452, 0.487, 0.476, 0.456, 0.482, 0.468, 0.466, 0.469, 0.43, 0.478, 0.496, 0.435, 0.471, 0.446, 0.47, 0.464, 0.477, 0.444, 0.449, 0.471, 0.457, 0.469, 0.441, 0.471, 0.473, 0.456, 0.485, 0.488, 0.467, 0.47, 0.445, 0.454, 0.465, 0.45, 0.473, 0.467, 0.448, 0.47, 0.455, 0.446, 0.464, 0.449, 0.475, 0.455, 0.494, 0.457, 0.46, 0.477, 0.469, 0.463, 0.441, 0.471, 0.457, 0.461, 0.445, 0.473, 0.472, 0.47, 0.439, 0.479, 0.472, 0.448, 0.428, 0.461, 0.47, 0.469, 0.446, 0.454, 0.452, 0.466, 0.446, 0.461, 0.472, 0.459, 0.47, 0.476, 0.453, 0.453, 0.457, 0.47, 0.455, 0.477, 0.444, 0.449, 0.439, 0.473, 0.458, 0.476, 0.486, 0.458, 0.472, 0.46, 0.473, 0.439, 0.463, 0.462, 0.447, 0.437, 0.476, 0.481, 0.47, 0.484, 0.453, 0.458, 0.465, 0.464, 0.464, 0.447, 0.476, 0.484, 0.433, 0.442, 0.474, 0.452, 0.456, 0.473, 0.459, 0.481, 0.472, 0.453, 0.461, 0.45, 0.482, 0.448, 0.464, 0.491, 0.45, 0.484, 0.453, 0.476, 0.447, 0.455, 0.505, 0.448, 0.471, 0.461, 0.469, 0.43, 0.439, 0.454, 0.492, 0.464, 0.449, 0.451, 0.461, 0.497, 0.462, 0.46, 0.469, 0.483, 0.461, 0.46, 0.471, 0.439, 0.496, 0.449, 0.482, 0.45, 0.438, 0.46, 0.486, 0.459, 0.472, 0.451, 0.453, 0.434, 0.444, 0.483, 0.481, 0.439, 0.463, 0.458, 0.46, 0.463, 0.446, 0.476, 0.467, 0.479, 0.469, 0.452, 0.444, 0.436, 0.451, 0.496, 0.449, 0.451, 0.471, 0.47, 0.458, 0.459, 0.466, 0.48, 0.458, 0.464, 0.478, 0.459, 0.473, 0.427, 0.439, 0.48, 0.46, 0.45, 0.451, 0.457, 0.47, 0.482, 0.465, 0.475, 0.446, 0.467, 0.456, 0.446, 0.497, 0.452, 0.44, 0.456, 0.468, 0.452, 0.45, 0.454, 0.479, 0.482, 0.477, 0.457, 0.469, 0.451, 0.466, 0.452, 0.486, 0.458, 0.448, 0.481, 0.459, 0.459, 0.481, 0.461, 0.47, 0.46, 0.43, 0.428, 0.446, 0.472, 0.464, 0.442, 0.448, 0.466, 0.459, 0.444, 0.45, 0.457, 0.434, 0.469, 0.469, 0.433, 0.438, 0.488, 0.471, 0.44, 0.466, 0.477, 0.421, 0.46, 0.456, 0.468, 0.444, 0.461, 0.474, 0.459, 0.447, 0.472, 0.46, 0.48, 0.443, 0.454, 0.474, 0.453, 0.445, 0.443, 0.464, 0.49, 0.452, 0.467, 0.454, 0.468, 0.454, 0.448, 0.464, 0.461, 0.474, 0.476, 0.452, 0.47, 0.453, 0.457, 0.437, 0.461, 0.464, 0.443, 0.437, 0.448, 0.472, 0.482, 0.459, 0.48, 0.457, 0.476, 0.468, 0.471, 0.463, 0.475, 0.452, 0.439, 0.444, 0.441, 0.452, 0.441, 0.455, 0.473, 0.481, 0.462, 0.445, 0.449, 0.459, 0.446, 0.487, 0.455, 0.452, 0.465, 0.461, 0.487, 0.439, 0.494, 0.463, 0.477, 0.446, 0.446, 0.444, 0.459, 0.451, 0.471, 0.466, 0.437, 0.463, 0.451, 0.471, 0.465, 0.491, 0.453, 0.448, 0.47, 0.469, 0.439, 0.456, 0.412, 0.492, 0.449, 0.449, 0.437, 0.462, 0.469, 0.467, 0.483, 0.457, 0.467, 0.433, 0.479, 0.465, 0.45, 0.471, 0.45, 0.465, 0.475, 0.458, 0.435, 0.452, 0.45, 0.464, 0.454, 0.494, 0.463, 0.454, 0.445, 0.458, 0.46, 0.462, 0.465, 0.47, 0.468, 0.465, 0.466, 0.451, 0.462, 0.467, 0.464, 0.451, 0.423, 0.452, 0.475, 0.481, 0.47, 0.446, 0.482, 0.465, 0.455, 0.45, 0.448, 0.469, 0.452, 0.429, 0.474, 0.464, 0.43, 0.48, 0.447, 0.47, 0.457, 0.466, 0.502, 0.466, 0.498, 0.456, 0.457, 0.452, 0.46, 0.46, 0.45, 0.43, 0.477, 0.459, 0.458, 0.479, 0.471, 0.463, 0.475, 0.441, 0.464, 0.465, 0.489, 0.471, 0.44, 0.449, 0.439, 0.448, 0.458, 0.476, 0.45, 0.482, 0.447, 0.48, 0.44, 0.464, 0.445, 0.448, 0.452, 0.431, 0.464, 0.473, 0.468, 0.439, 0.503, 0.475, 0.479, 0.434, 0.462, 0.455, 0.483, 0.488, 0.454, 0.441, 0.476, 0.452, 0.463, 0.474, 0.457, 0.441, 0.43, 0.453, 0.492, 0.469, 0.436, 0.45, 0.464, 0.464, 0.49, 0.464, 0.472, 0.439, 0.468, 0.463, 0.468, 0.46, 0.494, 0.476, 0.502, 0.491, 0.478, 0.463, 0.463, 0.426, 0.45, 0.464, 0.432, 0.446, 0.491, 0.478, 0.462, 0.459, 0.466, 0.481, 0.456, 0.471, 0.484, 0.479, 0.482, 0.468, 0.488, 0.478, 0.459, 0.462, 0.446, 0.429, 0.468, 0.439, 0.473, 0.442, 0.475, 0.472, 0.496, 0.484, 0.477, 0.485, 0.447, 0.458, 0.451, 0.441, 0.463, 0.463, 0.459, 0.466, 0.46, 0.455, 0.464, 0.478, 0.477, 0.451, 0.467, 0.445, 0.472, 0.473, 0.425, 0.464, 0.463, 0.458, 0.449, 0.471, 0.474, 0.463, 0.443, 0.452, 0.471, 0.483, 0.44]

plt.hist(data_3, bins = 20, density = True)
plt.xlabel('probability of the player winning')
plt.ylabel('density (%)')
plt.title('Histogram of the winning probability of the player using Strategy 3')
plt.show()
︡002ee56e-1e38-4a4d-8c50-1231adb00a1e︡{"stdout":"(array([ 0.73394495,  0.18348624,  1.28440367,  4.03669725,  8.44036697,\n       10.27522936, 19.81651376, 18.71559633, 28.44036697, 22.93577982,\n       23.48623853, 17.98165138, 12.47706422,  7.52293578,  3.11926606,\n        2.75229358,  0.73394495,  0.36697248,  0.        ,  0.18348624]), array([0.412  , 0.41745, 0.4229 , 0.42835, 0.4338 , 0.43925, 0.4447 ,\n       0.45015, 0.4556 , 0.46105, 0.4665 , 0.47195, 0.4774 , 0.48285,\n       0.4883 , 0.49375, 0.4992 , 0.50465, 0.5101 , 0.51555, 0.521  ]), <BarContainer object of 20 artists>)"}︡{"stdout":"\n"}︡{"stdout":"Text(0.5, 0, 'probability of the player winning')\n"}︡{"stdout":"Text(0, 0.5, 'density (%)')\n"}︡{"stdout":"Text(0.5, 1.0, 'Histogram of the winning probability of the player when using strategy 2')\n"}︡{"file":{"filename":"fabc2126-6897-49bb-bc7b-4154fbad0ffe.svg","show":true,"text":null,"uuid":"8751581f-ebec-4b3e-bb4d-eba60c590edd"},"once":false}︡{"done":true}
︠e69dfbe7-2a7e-4f9e-9ccd-7a55c69b016bs︠
import matplotlib.pyplot as plt
# draw histogram of 1000 runs of 1000 estimated games while using Strategy 4
data_4 = [0.379, 0.378, 0.386, 0.392, 0.392, 0.347, 0.385, 0.406, 0.354, 0.379, 0.436, 0.372, 0.382, 0.395, 0.387, 0.4, 0.363, 0.383, 0.401, 0.393, 0.386, 0.374, 0.388, 0.385, 0.38, 0.407, 0.401, 0.409, 0.377, 0.357, 0.403, 0.374, 0.367, 0.388, 0.387, 0.363, 0.387, 0.384, 0.373, 0.375, 0.397, 0.376, 0.366, 0.358, 0.372, 0.398, 0.379, 0.383, 0.396, 0.386, 0.365, 0.383, 0.365, 0.412, 0.39, 0.342, 0.387, 0.39, 0.392, 0.374, 0.37, 0.401, 0.404, 0.362, 0.376, 0.39, 0.385, 0.399, 0.403, 0.391, 0.4, 0.393, 0.396, 0.384, 0.382, 0.362, 0.394, 0.409, 0.414, 0.406, 0.398, 0.404, 0.385, 0.381, 0.389, 0.393, 0.409, 0.375, 0.375, 0.374, 0.363, 0.366, 0.391, 0.365, 0.386, 0.388, 0.382, 0.377, 0.384, 0.395, 0.395, 0.41, 0.366, 0.373, 0.377, 0.369, 0.38, 0.357, 0.381, 0.383, 0.386, 0.4, 0.397, 0.364, 0.376, 0.378, 0.368, 0.361, 0.407, 0.397, 0.375, 0.402, 0.4, 0.388, 0.408, 0.395, 0.373, 0.395, 0.392, 0.392, 0.38, 0.398, 0.382, 0.378, 0.386, 0.393, 0.387, 0.36, 0.404, 0.391, 0.374, 0.396, 0.405, 0.375, 0.385, 0.41, 0.391, 0.39, 0.391, 0.418, 0.4, 0.363, 0.389, 0.402, 0.38, 0.391, 0.387, 0.38, 0.401, 0.399, 0.387, 0.392, 0.383, 0.412, 0.397, 0.416, 0.384, 0.384, 0.392, 0.384, 0.38, 0.368, 0.395, 0.38, 0.368, 0.354, 0.378, 0.373, 0.375, 0.395, 0.395, 0.373, 0.403, 0.375, 0.362, 0.374, 0.381, 0.383, 0.393, 0.388, 0.372, 0.37, 0.401, 0.363, 0.387, 0.384, 0.366, 0.405, 0.385, 0.375, 0.374, 0.366, 0.373, 0.38, 0.395, 0.395, 0.385, 0.4, 0.383, 0.4, 0.394, 0.395, 0.383, 0.404, 0.386, 0.389, 0.382, 0.369, 0.375, 0.389, 0.408, 0.384, 0.349, 0.405, 0.376, 0.364, 0.399, 0.401, 0.381, 0.387, 0.383, 0.407, 0.422, 0.378, 0.371, 0.368, 0.398, 0.399, 0.371, 0.379, 0.392, 0.415, 0.392, 0.384, 0.376, 0.377, 0.385, 0.362, 0.391, 0.39, 0.4, 0.399, 0.406, 0.381, 0.395, 0.363, 0.387, 0.407, 0.375, 0.389, 0.38, 0.376, 0.4, 0.375, 0.383, 0.387, 0.391, 0.373, 0.387, 0.399, 0.375, 0.351, 0.378, 0.411, 0.365, 0.381, 0.369, 0.391, 0.369, 0.369, 0.391, 0.383, 0.401, 0.39, 0.364, 0.41, 0.367, 0.397, 0.364, 0.378, 0.385, 0.387, 0.397, 0.363, 0.398, 0.391, 0.387, 0.387, 0.386, 0.408, 0.379, 0.393, 0.379, 0.379, 0.384, 0.388, 0.366, 0.383, 0.367, 0.374, 0.375, 0.374, 0.369, 0.401, 0.375, 0.394, 0.378, 0.388, 0.369, 0.405, 0.378, 0.386, 0.385, 0.405, 0.396, 0.371, 0.383, 0.406, 0.403, 0.377, 0.397, 0.38, 0.411, 0.39, 0.404, 0.389, 0.39, 0.401, 0.366, 0.38, 0.389, 0.39, 0.368, 0.394, 0.402, 0.38, 0.388, 0.367, 0.365, 0.397, 0.386, 0.367, 0.381, 0.357, 0.381, 0.386, 0.375, 0.402, 0.378, 0.397, 0.373, 0.397, 0.387, 0.399, 0.381, 0.403, 0.402, 0.414, 0.394, 0.397, 0.399, 0.361, 0.381, 0.387, 0.366, 0.392, 0.398, 0.387, 0.408, 0.396, 0.383, 0.404, 0.405, 0.407, 0.392, 0.401, 0.371, 0.381, 0.354, 0.377, 0.392, 0.339, 0.374, 0.364, 0.386, 0.373, 0.396, 0.385, 0.392, 0.371, 0.38, 0.376, 0.39, 0.369, 0.384, 0.386, 0.377, 0.387, 0.373, 0.397, 0.395, 0.403, 0.384, 0.402, 0.369, 0.394, 0.419, 0.389, 0.379, 0.402, 0.402, 0.373, 0.38, 0.4, 0.376, 0.409, 0.389, 0.403, 0.396, 0.379, 0.385, 0.376, 0.386, 0.398, 0.386, 0.377, 0.395, 0.352, 0.392, 0.394, 0.379, 0.393, 0.396, 0.405, 0.388, 0.4, 0.363, 0.396, 0.395, 0.383, 0.381, 0.41, 0.385, 0.377, 0.392, 0.394, 0.385, 0.36, 0.37, 0.378, 0.399, 0.386, 0.349, 0.393, 0.397, 0.374, 0.415, 0.385, 0.405, 0.392, 0.419, 0.38, 0.373, 0.354, 0.366, 0.374, 0.396, 0.374, 0.374, 0.38, 0.383, 0.376, 0.376, 0.415, 0.387, 0.398, 0.377, 0.383, 0.414, 0.382, 0.386, 0.407, 0.396, 0.381, 0.38, 0.368, 0.396, 0.381, 0.394, 0.38, 0.374, 0.375, 0.397, 0.376, 0.392, 0.392, 0.381, 0.387, 0.376, 0.375, 0.401, 0.364, 0.393, 0.382, 0.381, 0.347, 0.406, 0.377, 0.377, 0.387, 0.385, 0.373, 0.364, 0.393, 0.373, 0.393, 0.392, 0.407, 0.378, 0.366, 0.358, 0.379, 0.379, 0.383, 0.361, 0.381, 0.401, 0.393, 0.39, 0.354, 0.4, 0.381, 0.393, 0.388, 0.4, 0.401, 0.396, 0.354, 0.411, 0.402, 0.389, 0.387, 0.42, 0.373, 0.391, 0.359, 0.409, 0.386, 0.373, 0.388, 0.38, 0.395, 0.373, 0.369, 0.376, 0.421, 0.389, 0.378, 0.355, 0.361, 0.39, 0.391, 0.359, 0.385, 0.393, 0.41, 0.421, 0.377, 0.371, 0.409, 0.374, 0.386, 0.383, 0.381, 0.382, 0.383, 0.383, 0.372, 0.389, 0.372, 0.38, 0.385, 0.381, 0.36, 0.38, 0.361, 0.409, 0.397, 0.366, 0.368, 0.379, 0.415, 0.367, 0.371, 0.392, 0.4, 0.4, 0.375, 0.377, 0.381, 0.376, 0.393, 0.395, 0.405, 0.368, 0.391, 0.367, 0.391, 0.394, 0.402, 0.387, 0.356, 0.392, 0.373, 0.384, 0.388, 0.37, 0.383, 0.395, 0.392, 0.397, 0.387, 0.37, 0.419, 0.389, 0.383, 0.406, 0.403, 0.396, 0.396, 0.354, 0.393, 0.401, 0.39, 0.4, 0.381, 0.365, 0.379, 0.408, 0.391, 0.385, 0.392, 0.374, 0.38, 0.373, 0.413, 0.406, 0.403, 0.39, 0.417, 0.387, 0.386, 0.365, 0.374, 0.396, 0.393, 0.393, 0.39, 0.401, 0.379, 0.414, 0.375, 0.385, 0.379, 0.401, 0.389, 0.355, 0.363, 0.372, 0.381, 0.391, 0.401, 0.389, 0.378, 0.412, 0.385, 0.394, 0.388, 0.385, 0.38, 0.404, 0.354, 0.37, 0.374, 0.401, 0.389, 0.378, 0.389, 0.377, 0.392, 0.374, 0.368, 0.378, 0.422, 0.348, 0.388, 0.393, 0.388, 0.398, 0.384, 0.36, 0.4, 0.381, 0.383, 0.378, 0.383, 0.402, 0.401, 0.389, 0.375, 0.369, 0.362, 0.384, 0.39, 0.372, 0.371, 0.394, 0.372, 0.38, 0.386, 0.383, 0.377, 0.408, 0.397, 0.37, 0.404, 0.406, 0.392, 0.36, 0.401, 0.379, 0.376, 0.412, 0.403, 0.377, 0.383, 0.386, 0.377, 0.388, 0.359, 0.375, 0.39, 0.409, 0.36, 0.381, 0.384, 0.383, 0.367, 0.378, 0.389, 0.365, 0.383, 0.384, 0.408, 0.367, 0.379, 0.375, 0.397, 0.36, 0.357, 0.385, 0.424, 0.363, 0.386, 0.383, 0.38, 0.382, 0.372, 0.375, 0.383, 0.381, 0.385, 0.355, 0.386, 0.384, 0.386, 0.396, 0.353, 0.381, 0.387, 0.39, 0.397, 0.397, 0.384, 0.418, 0.407, 0.369, 0.401, 0.365, 0.389, 0.402, 0.382, 0.383, 0.386, 0.392, 0.38, 0.358, 0.352, 0.381, 0.382, 0.39, 0.378, 0.408, 0.376, 0.386, 0.388, 0.395, 0.417, 0.4, 0.388, 0.385, 0.387, 0.375, 0.385, 0.373, 0.383, 0.4, 0.379, 0.387, 0.383, 0.402, 0.388, 0.376, 0.41, 0.383, 0.377, 0.396, 0.385, 0.362, 0.377, 0.401, 0.393, 0.385, 0.386, 0.366, 0.379, 0.384, 0.369, 0.374, 0.389, 0.382, 0.381, 0.419, 0.382, 0.365, 0.386, 0.407, 0.384, 0.371, 0.391, 0.374, 0.4, 0.367, 0.379, 0.38, 0.395, 0.401, 0.392, 0.397, 0.381, 0.369, 0.418, 0.39, 0.392, 0.388, 0.397, 0.374, 0.374, 0.385, 0.376, 0.374, 0.403, 0.39, 0.386, 0.385, 0.399, 0.354, 0.399, 0.407, 0.361, 0.392, 0.396, 0.377, 0.399, 0.371, 0.41, 0.384, 0.386, 0.378, 0.371, 0.39, 0.384, 0.408, 0.407, 0.353, 0.41, 0.367, 0.39, 0.396, 0.403, 0.377, 0.382, 0.401, 0.389, 0.393, 0.388, 0.368, 0.384, 0.391, 0.362, 0.363, 0.413, 0.38, 0.381, 0.376, 0.384, 0.386, 0.355, 0.415, 0.397, 0.367, 0.365, 0.375, 0.374, 0.367, 0.399, 0.354, 0.373, 0.396, 0.362, 0.398, 0.39, 0.365, 0.384, 0.383, 0.387, 0.401, 0.399, 0.364, 0.403, 0.375, 0.4, 0.372, 0.401, 0.37, 0.401, 0.382, 0.396, 0.359, 0.389, 0.404, 0.391, 0.382, 0.37, 0.385, 0.373, 0.388, 0.403, 0.397, 0.403, 0.354, 0.398, 0.409, 0.372, 0.373, 0.397, 0.367, 0.402, 0.429, 0.367, 0.379, 0.408, 0.394, 0.409, 0.38, 0.407, 0.375, 0.383, 0.38, 0.381, 0.367, 0.386, 0.357, 0.369, 0.376, 0.409, 0.389, 0.405, 0.379, 0.398]
plt.hist(data_4, bins = 20, density = True)
plt.xlabel('probability of the player winning')
plt.ylabel('density (%)')
plt.title('Histogram of the winning probability of the player using Strategy 4')
plt.show()
︡4a1a9140-db6d-40f0-bc68-9cbf6d022574︡{"stdout":"(array([ 0.41237113,  0.6185567 ,  1.44329897,  4.94845361,  7.42268041,\n       11.95876289,  9.48453608, 24.53608247, 24.94845361, 32.37113402,\n       24.53608247, 20.82474227, 18.1443299 ,  8.65979381,  9.07216495,\n        3.29896907,  2.4742268 ,  0.6185567 ,  0.20618557,  0.20618557]), array([0.339  , 0.34385, 0.3487 , 0.35355, 0.3584 , 0.36325, 0.3681 ,\n       0.37295, 0.3778 , 0.38265, 0.3875 , 0.39235, 0.3972 , 0.40205,\n       0.4069 , 0.41175, 0.4166 , 0.42145, 0.4263 , 0.43115, 0.436  ]), <BarContainer object of 20 artists>)\n"}︡{"stdout":"Text(0.5, 0, 'probability of the player winning')\n"}︡{"stdout":"Text(0, 0.5, 'density (%)')\n"}︡{"stdout":"Text(0.5, 1.0, 'Histogram of the winning probability of the player using Strategy 4')\n"}︡{"file":{"filename":"83dffd27-47f4-4c94-a122-ba1497ba4d46.svg","show":true,"text":null,"uuid":"3b50736f-e500-4a27-89b8-6b519dc52cc9"},"once":false}︡{"done":true}









