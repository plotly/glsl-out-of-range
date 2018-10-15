bool outOfRange(float a, float b, float p) {
  if ((p > max(a, b)) ||
      (p < min(a, b))) return true;
  return false;
}

bool outOfRange(vec2 a, vec2 b, vec2 p) {
  if (outOfRange(a.x, b.x, p.x) ||
      outOfRange(a.y, b.y, p.y)) return true;
  return false;
}

bool outOfRange(vec3 a, vec3 b, vec3 p) {
  if (outOfRange(a.x, b.x, p.x) ||
      outOfRange(a.y, b.y, p.y) ||
      outOfRange(a.z, b.z, p.z)) return true;
  return false;
}

bool outOfRange(vec4 a, vec4 b, vec4 p) {
  return outOfRange(a.xyz, b.xyz, p.xyz);
}

#pragma glslify: export(outOfRange)
