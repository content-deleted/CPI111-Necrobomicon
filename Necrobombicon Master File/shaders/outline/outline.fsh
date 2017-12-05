//
// 
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 outlineColor;
uniform vec2 spriteSize;

void main()
{
	vec4 originalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
    vec4 newColor = outlineColor;
    newColor.a = 1.0;
    //Original
    newColor = originalColor;
    //Transparent
    if(originalColor.a == 0.0)
    {
        newColor = outlineColor;
        float newAlpha = 0.0;
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(spriteSize.x, 0.0)).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(-spriteSize.x, 0.0)).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(0.0, spriteSize.y)).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(0.0, -spriteSize.y)).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + spriteSize).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(spriteSize.x, -spriteSize.y)).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(-spriteSize.x, spriteSize.y)).a);
        newAlpha = max(newAlpha, texture2D(gm_BaseTexture, v_vTexcoord + vec2(-spriteSize.x, -spriteSize.y)).a);
        newColor.a = newAlpha;
    }
    gl_FragColor = newColor;
}
