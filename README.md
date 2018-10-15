# glsl-out-of-range
Tests if a point is outside ranges. 
It could be useful in vertex & fragment shaders to support reversed ranges (bounds) in 3D/2D scenes.

Function prototypes:

bool outOfRange(float a, float b, float p);

bool outOfRange(vec2 a, vec2 b, vec2 p);

bool outOfRange(vec3 a, vec3 b, vec3 p);

bool outOfRange(vec4 a, vec4 b, vec4 p);

Please note that in the case of vec4 input arguments, only 3 tests are made i.e. for xyz and not for w.

# Example

```glsl
#pragma glslify: outOfRange = require(glsl-out-of-range)

void main() {
  if outOfRange(bounds[0], bounds[1], position) discard;

  gl_FragColor = vec4(1.0, 0.5, 0.25, 1.0);
}
```

# Usage

Install with npm:

```
npm install glsl-out-of-ranges
```

Then use with [glslify](https://github.com/stackgl/glslify).

# API

```glsl
#pragma glslify: outOfRange = require(glsl-out-of-range)
```

# License
(c) 2018 Mojtaba Samimi. MIT License
