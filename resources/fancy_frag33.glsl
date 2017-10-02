#version 330 core

uniform vec3 uColor;

in vec2 fVertPos;

out vec3 color;


void main()
{
	color = uColor;

	if (mod(fVertPos.x * 4.0, 1.0) < 0.5 || mod(fVertPos.y * 4.0, 1.0) < 0.5)
		color *= 0.5;

	if (mod(gl_FragCoord.x, 64.0) < 32.0 || mod(gl_FragCoord.y, 64.0) < 32.0)
		color.rg = color.gr;
}
