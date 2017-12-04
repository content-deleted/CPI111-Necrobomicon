varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;

void main()
{
    vec2 uv = v_vTexcoord.xy * 0.986 ;//+ 0.007;
    vec3 col; //  Note: Emulates color distortion caused by subpixels. This can reduced to a single texture-fetch to increase performance.
    
    col.r = texture2D(gm_BaseTexture, vec2(uv.x + 0.0003, uv.y)).x;
    col.g = texture2D(gm_BaseTexture, vec2(uv.x + 0.0003, uv.y)).y;
    col.b = texture2D(gm_BaseTexture, vec2(uv.x - 0.0003, uv.y)).z;
    
    col = clamp(col * 0.5 + 0.6 * col * col, 0.0, 1.0);
    col *= 0.6 + 6.4 * uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y); // Vignetting
    
    //col *= vec3(0.9, 1.0, 0.7); // "TV Color"
    col *= vec3(0.9, 1.0, 0.9); // "TV Color"
    
    // Scanlines
    col *= 0.8 + 0.2 * sin(10.0 * time + uv.y * 768.0); 
    
    // Similar results to old rand() function, but more efficient.
    col *= 1.0 - 0.07 * fract(tan(time * 100.0)); 
    gl_FragColor = vec4(col, 1.0);
}